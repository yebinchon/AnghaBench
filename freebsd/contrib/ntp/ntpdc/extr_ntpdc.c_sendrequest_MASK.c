#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_long ;
typedef  void* u_char ;
struct TYPE_2__ {int /*<<< orphan*/  data; } ;
struct req_pkt {void* auth_seq; void* mbz_itemsize; void* err_nitems; TYPE_1__ u; void* request; void* implementation; int /*<<< orphan*/  rm_vn_mode; } ;
typedef  int /*<<< orphan*/  l_fp ;
typedef  int /*<<< orphan*/  keyid_t ;

/* Variables and functions */
 void* FUNC0 (int,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC4 (size_t) ; 
 size_t REQ_LEN_HDR ; 
 size_t REQ_LEN_NOMAC ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct req_pkt) ; 
 size_t FUNC7 (scalar_t__,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  delay_time ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (char*) ; 
 char* FUNC14 (int /*<<< orphan*/ ) ; 
 int info_auth_hashlen ; 
 scalar_t__ info_auth_keyid ; 
 int /*<<< orphan*/  info_auth_keytype ; 
 scalar_t__ keyid_entered ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char const*,size_t) ; 
 size_t req_pkt_size ; 
 int FUNC16 (struct req_pkt*,size_t) ; 
 int /*<<< orphan*/  FUNC17 (size_t) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int
FUNC18(
	int implcode,
	int reqcode,
	int auth,
	size_t qitems,
	size_t qsize,
	const char *qdata
	)
{
	struct req_pkt qpkt;
	size_t	datasize;
	size_t	reqsize;
	u_long	key_id;
	l_fp	ts;
	l_fp *	ptstamp;
	size_t	maclen;
	char *	pass;

	FUNC6(qpkt);
	qpkt.rm_vn_mode = FUNC5(0, 0, 0);
	qpkt.implementation = (u_char)implcode;
	qpkt.request = (u_char)reqcode;

	datasize = qitems * qsize;
	if (datasize && qdata != NULL) {
		FUNC15(qpkt.u.data, qdata, datasize);
		qpkt.err_nitems = FUNC1(0, qitems);
		qpkt.mbz_itemsize = FUNC4(qsize);
	} else {
		qpkt.err_nitems = FUNC1(0, 0);
		qpkt.mbz_itemsize = FUNC4(qsize);  /* allow for optional first item */
	}

	if (!auth || (keyid_entered && info_auth_keyid == 0)) {
		qpkt.auth_seq = FUNC0(0, 0);
		return FUNC16(&qpkt, req_pkt_size);
	}

	if (info_auth_keyid == 0) {
		key_id = FUNC13("Keyid: ");
		if (!key_id) {
			FUNC11(stderr, "Invalid key identifier\n");
			return 1;
		}
		info_auth_keyid = key_id;
	}
	if (!FUNC8(info_auth_keyid)) {
		pass = FUNC14(info_auth_keytype);
		if ('\0' == pass[0]) {
			FUNC11(stderr, "Invalid password\n");
			return 1;
		}
		FUNC10(info_auth_keyid, info_auth_keytype,
			   (u_char *)pass);
		FUNC9(info_auth_keyid, 1);
	}
	qpkt.auth_seq = FUNC0(1, 0);
	if (info_auth_hashlen > 16) {
		/*
		 * Only ntpd which expects REQ_LEN_NOMAC plus maclen
		 * octets in an authenticated request using a 16 octet
		 * digest (that is, a newer ntpd) will handle digests
		 * larger than 16 octets, so for longer digests, do
		 * not attempt to shorten the requests for downlevel
		 * ntpd compatibility.
		 */
		if (REQ_LEN_NOMAC != req_pkt_size)
			return 1;
		reqsize = REQ_LEN_HDR + datasize + sizeof(*ptstamp);
		/* align to 32 bits */
		reqsize = (reqsize + 3) & ~3;
	} else
		reqsize = req_pkt_size;
	ptstamp = (void *)((char *)&qpkt + reqsize);
	ptstamp--;
	FUNC12(&ts);
	FUNC3(&ts, &delay_time);
	FUNC2(&ts, ptstamp);
	maclen = FUNC7(
		info_auth_keyid, (void *)&qpkt, FUNC17(reqsize));
	if (!maclen) {  
		FUNC11(stderr, "Key not found\n");
		return 1;
	} else if (maclen != (size_t)(info_auth_hashlen + sizeof(keyid_t))) {
		FUNC11(stderr,
			"%zu octet MAC, %zu expected with %d octet digest\n",
			maclen, (info_auth_hashlen + sizeof(keyid_t)),
			info_auth_hashlen);
		return 1;
	}
	return FUNC16(&qpkt, reqsize + maclen);
}