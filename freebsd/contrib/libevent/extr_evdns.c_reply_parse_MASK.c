#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  int u16 ;
typedef  int /*<<< orphan*/  tmp_name ;
struct request {int request_type; int request_len; int /*<<< orphan*/ * put_cname_in_ptr; int /*<<< orphan*/ * request; struct evdns_base* base; } ;
struct TYPE_7__ {int addrcount; int /*<<< orphan*/ * addresses; } ;
struct TYPE_6__ {char* name; } ;
struct TYPE_5__ {int addrcount; int /*<<< orphan*/ * addresses; } ;
struct TYPE_8__ {TYPE_3__ aaaa; TYPE_2__ ptr; TYPE_1__ a; } ;
struct reply {int type; int have_answer; TYPE_4__ data; } ;
struct evdns_base {int /*<<< orphan*/  global_randomize_case; } ;
typedef  int /*<<< orphan*/  reply ;
typedef  int /*<<< orphan*/  cname ;
typedef  int /*<<< orphan*/  cmp_name ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evdns_base*) ; 
 int CLASS_INET ; 
 int DNS_ERR_NOTEXIST ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int HOST_NAME_MAX ; 
 int MAX_V4_ADDRS ; 
 int MAX_V6_ADDRS ; 
 int FUNC4 (int,int) ; 
 int /*<<< orphan*/  SKIP_NAME ; 
 int TYPE_A ; 
 int TYPE_AAAA ; 
 int TYPE_CNAME ; 
 int TYPE_PTR ; 
 int TYPE_SOA ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct reply*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int,int*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct request*,int,int,struct reply*) ; 
 struct request* FUNC11 (struct evdns_base*,int) ; 
 scalar_t__ FUNC12 (char*,char*) ; 

__attribute__((used)) static int
FUNC13(struct evdns_base *base, u8 *packet, int length) {
	int j = 0, k = 0;  /* index into packet */
	u16 t_;	 /* used by the macros */
	u32 t32_;  /* used by the macros */
	char tmp_name[256], cmp_name[256]; /* used by the macros */
	int name_matches = 0;

	u16 trans_id, questions, answers, authority, additional, datalength;
	u16 flags = 0;
	u32 ttl, ttl_r = 0xffffffff;
	struct reply reply;
	struct request *req = NULL;
	unsigned int i;

	FUNC0(base);

	FUNC2(trans_id);
	FUNC2(flags);
	FUNC2(questions);
	FUNC2(answers);
	FUNC2(authority);
	FUNC2(additional);
	(void) authority; /* suppress "unused variable" warnings. */
	(void) additional; /* suppress "unused variable" warnings. */

	req = FUNC11(base, trans_id);
	if (!req) return -1;
	FUNC1(req->base == base);

	FUNC7(&reply, 0, sizeof(reply));

	/* If it's not an answer, it doesn't correspond to any request. */
	if (!(flags & 0x8000)) return -1;  /* must be an answer */
	if ((flags & 0x020f) && (flags & 0x020f) != DNS_ERR_NOTEXIST) {
		/* there was an error and it's not NXDOMAIN */
		goto err;
	}
	/* if (!answers) return; */  /* must have an answer of some form */

	/* This macro skips a name in the DNS reply. */
#define SKIP_NAME						\
	do { tmp_name[0] = '\0';				\
		if (name_parse(packet, length, &j, tmp_name,	\
			sizeof(tmp_name))<0)			\
			goto err;				\
	} while (0)

	reply.type = req->request_type;

	/* skip over each question in the reply */
	for (i = 0; i < questions; ++i) {
		/* the question looks like
		 *   <label:name><u16:type><u16:class>
		 */
		tmp_name[0] = '\0';
		cmp_name[0] = '\0';
		k = j;
		if (FUNC9(packet, length, &j, tmp_name, sizeof(tmp_name)) < 0)
			goto err;
		if (FUNC9(req->request, req->request_len, &k,
			cmp_name, sizeof(cmp_name))<0)
			goto err;
		if (!base->global_randomize_case) {
			if (FUNC12(tmp_name, cmp_name) == 0)
				name_matches = 1;
		} else {
			if (FUNC5(tmp_name, cmp_name) == 0)
				name_matches = 1;
		}

		j += 4;
		if (j > length)
			goto err;
	}

	if (!name_matches)
		goto err;

	/* now we have the answer section which looks like
	 * <label:name><u16:type><u16:class><u32:ttl><u16:len><data...>
	 */

	for (i = 0; i < answers; ++i) {
		u16 type, class;

		SKIP_NAME;
		FUNC2(type);
		FUNC2(class);
		FUNC3(ttl);
		FUNC2(datalength);

		if (type == TYPE_A && class == CLASS_INET) {
			int addrcount, addrtocopy;
			if (req->request_type != TYPE_A) {
				j += datalength; continue;
			}
			if ((datalength & 3) != 0) /* not an even number of As. */
			    goto err;
			addrcount = datalength >> 2;
			addrtocopy = FUNC4(MAX_V4_ADDRS - reply.data.a.addrcount, (unsigned)addrcount);

			ttl_r = FUNC4(ttl_r, ttl);
			/* we only bother with the first four addresses. */
			if (j + 4*addrtocopy > length) goto err;
			FUNC6(&reply.data.a.addresses[reply.data.a.addrcount],
				   packet + j, 4*addrtocopy);
			j += 4*addrtocopy;
			reply.data.a.addrcount += addrtocopy;
			reply.have_answer = 1;
			if (reply.data.a.addrcount == MAX_V4_ADDRS) break;
		} else if (type == TYPE_PTR && class == CLASS_INET) {
			if (req->request_type != TYPE_PTR) {
				j += datalength; continue;
			}
			if (FUNC9(packet, length, &j, reply.data.ptr.name,
						   sizeof(reply.data.ptr.name))<0)
				goto err;
			ttl_r = FUNC4(ttl_r, ttl);
			reply.have_answer = 1;
			break;
		} else if (type == TYPE_CNAME) {
			char cname[HOST_NAME_MAX];
			if (!req->put_cname_in_ptr || *req->put_cname_in_ptr) {
				j += datalength; continue;
			}
			if (FUNC9(packet, length, &j, cname,
				sizeof(cname))<0)
				goto err;
			*req->put_cname_in_ptr = FUNC8(cname);
		} else if (type == TYPE_AAAA && class == CLASS_INET) {
			int addrcount, addrtocopy;
			if (req->request_type != TYPE_AAAA) {
				j += datalength; continue;
			}
			if ((datalength & 15) != 0) /* not an even number of AAAAs. */
				goto err;
			addrcount = datalength >> 4;  /* each address is 16 bytes long */
			addrtocopy = FUNC4(MAX_V6_ADDRS - reply.data.aaaa.addrcount, (unsigned)addrcount);
			ttl_r = FUNC4(ttl_r, ttl);

			/* we only bother with the first four addresses. */
			if (j + 16*addrtocopy > length) goto err;
			FUNC6(&reply.data.aaaa.addresses[reply.data.aaaa.addrcount],
				   packet + j, 16*addrtocopy);
			reply.data.aaaa.addrcount += addrtocopy;
			j += 16*addrtocopy;
			reply.have_answer = 1;
			if (reply.data.aaaa.addrcount == MAX_V6_ADDRS) break;
		} else {
			/* skip over any other type of resource */
			j += datalength;
		}
	}

	if (!reply.have_answer) {
		for (i = 0; i < authority; ++i) {
			u16 type, class;
			SKIP_NAME;
			FUNC2(type);
			FUNC2(class);
			FUNC3(ttl);
			FUNC2(datalength);
			if (type == TYPE_SOA && class == CLASS_INET) {
				u32 serial, refresh, retry, expire, minimum;
				SKIP_NAME;
				SKIP_NAME;
				FUNC3(serial);
				FUNC3(refresh);
				FUNC3(retry);
				FUNC3(expire);
				FUNC3(minimum);
				(void)expire;
				(void)retry;
				(void)refresh;
				(void)serial;
				ttl_r = FUNC4(ttl_r, ttl);
				ttl_r = FUNC4(ttl_r, minimum);
			} else {
				/* skip over any other type of resource */
				j += datalength;
			}
		}
	}

	if (ttl_r == 0xffffffff)
		ttl_r = 0;

	FUNC10(req, flags, ttl_r, &reply);
	return 0;
 err:
	if (req)
		FUNC10(req, flags, 0, NULL);
	return -1;
}