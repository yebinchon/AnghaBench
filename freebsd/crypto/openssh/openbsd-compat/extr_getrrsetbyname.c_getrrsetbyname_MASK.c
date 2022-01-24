#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct rrsetinfo {scalar_t__ rri_rdclass; scalar_t__ rri_rdtype; int rri_nrdatas; int rri_nsigs; struct rdatainfo* rri_sigs; struct rdatainfo* rri_rdatas; int /*<<< orphan*/ * rri_name; int /*<<< orphan*/  rri_flags; int /*<<< orphan*/  rri_ttl; } ;
struct rdatainfo {int /*<<< orphan*/ * rdi_data; int /*<<< orphan*/  rdi_length; } ;
struct dns_rr {scalar_t__ class; scalar_t__ type; int /*<<< orphan*/  size; int /*<<< orphan*/  rdata; struct dns_rr* next; int /*<<< orphan*/  name; int /*<<< orphan*/  ttl; } ;
struct TYPE_4__ {int qdcount; int ancount; int ad; } ;
struct dns_response {struct dns_rr* answer; TYPE_2__ header; TYPE_1__* query; } ;
struct __res_state {int options; } ;
typedef  int /*<<< orphan*/  answer ;
struct TYPE_3__ {scalar_t__ class; scalar_t__ type; } ;

/* Variables and functions */
 int ANSWER_BUFFER_SIZE ; 
 int ERRSET_FAIL ; 
 int ERRSET_INVAL ; 
 int ERRSET_NODATA ; 
 int ERRSET_NOMEMORY ; 
 int ERRSET_NONAME ; 
 int ERRSET_SUCCESS ; 
#define  HOST_NOT_FOUND 129 
#define  NO_DATA 128 
 int RES_DEBUG ; 
 int RES_INIT ; 
 int RES_USE_DNSSEC ; 
 int RES_USE_EDNS0 ; 
 int /*<<< orphan*/  RRSET_VALIDATED ; 
 scalar_t__ T_RRSIG ; 
 struct __res_state* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  _res ; 
 void* FUNC1 (int,int) ; 
 void* FUNC2 (struct dns_rr*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct dns_response*) ; 
 int /*<<< orphan*/  FUNC4 (struct rrsetinfo*) ; 
 int h_errno ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dns_response* FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 () ; 
 int FUNC9 (char const*,int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ) ; 

int
FUNC11(const char *hostname, unsigned int rdclass,
    unsigned int rdtype, unsigned int flags,
    struct rrsetinfo **res)
{
	struct __res_state *_resp = FUNC0(_res, _res, &_res);
	int result;
	struct rrsetinfo *rrset = NULL;
	struct dns_response *response = NULL;
	struct dns_rr *rr;
	struct rdatainfo *rdata;
	int length;
	unsigned int index_ans, index_sig;
	u_char answer[ANSWER_BUFFER_SIZE];

	/* check for invalid class and type */
	if (rdclass > 0xffff || rdtype > 0xffff) {
		result = ERRSET_INVAL;
		goto fail;
	}

	/* don't allow queries of class or type ANY */
	if (rdclass == 0xff || rdtype == 0xff) {
		result = ERRSET_INVAL;
		goto fail;
	}

	/* don't allow flags yet, unimplemented */
	if (flags) {
		result = ERRSET_INVAL;
		goto fail;
	}

	/* initialize resolver */
	if ((_resp->options & RES_INIT) == 0 && FUNC8() == -1) {
		result = ERRSET_FAIL;
		goto fail;
	}

#ifdef DEBUG
	_resp->options |= RES_DEBUG;
#endif /* DEBUG */

#ifdef RES_USE_DNSSEC
	/* turn on DNSSEC if EDNS0 is configured */
	if (_resp->options & RES_USE_EDNS0)
		_resp->options |= RES_USE_DNSSEC;
#endif /* RES_USE_DNSEC */

	/* make query */
	length = FUNC9(hostname, (signed int) rdclass, (signed int) rdtype,
	    answer, sizeof(answer));
	if (length < 0) {
		switch(h_errno) {
		case HOST_NOT_FOUND:
			result = ERRSET_NONAME;
			goto fail;
		case NO_DATA:
			result = ERRSET_NODATA;
			goto fail;
		default:
			result = ERRSET_FAIL;
			goto fail;
		}
	}

	/* parse result */
	response = FUNC7(answer, length);
	if (response == NULL) {
		result = ERRSET_FAIL;
		goto fail;
	}

	if (response->header.qdcount != 1) {
		result = ERRSET_FAIL;
		goto fail;
	}

	/* initialize rrset */
	rrset = FUNC1(1, sizeof(struct rrsetinfo));
	if (rrset == NULL) {
		result = ERRSET_NOMEMORY;
		goto fail;
	}
	rrset->rri_rdclass = response->query->class;
	rrset->rri_rdtype = response->query->type;
	rrset->rri_ttl = response->answer->ttl;
	rrset->rri_nrdatas = response->header.ancount;

#ifdef HAVE_HEADER_AD
	/* check for authenticated data */
	if (response->header.ad == 1)
		rrset->rri_flags |= RRSET_VALIDATED;
#endif

	/* copy name from answer section */
	rrset->rri_name = FUNC10(response->answer->name);
	if (rrset->rri_name == NULL) {
		result = ERRSET_NOMEMORY;
		goto fail;
	}

	/* count answers */
	rrset->rri_nrdatas = FUNC2(response->answer, rrset->rri_rdclass,
	    rrset->rri_rdtype);
	rrset->rri_nsigs = FUNC2(response->answer, rrset->rri_rdclass,
	    T_RRSIG);

	/* allocate memory for answers */
	rrset->rri_rdatas = FUNC1(rrset->rri_nrdatas,
	    sizeof(struct rdatainfo));
	if (rrset->rri_rdatas == NULL) {
		result = ERRSET_NOMEMORY;
		goto fail;
	}

	/* allocate memory for signatures */
	if (rrset->rri_nsigs > 0) {
		rrset->rri_sigs = FUNC1(rrset->rri_nsigs, sizeof(struct rdatainfo));
		if (rrset->rri_sigs == NULL) {
			result = ERRSET_NOMEMORY;
			goto fail;
		}
	}

	/* copy answers & signatures */
	for (rr = response->answer, index_ans = 0, index_sig = 0;
	    rr; rr = rr->next) {

		rdata = NULL;

		if (rr->class == rrset->rri_rdclass &&
		    rr->type  == rrset->rri_rdtype)
			rdata = &rrset->rri_rdatas[index_ans++];

		if (rr->class == rrset->rri_rdclass &&
		    rr->type  == T_RRSIG)
			rdata = &rrset->rri_sigs[index_sig++];

		if (rdata) {
			rdata->rdi_length = rr->size;
			rdata->rdi_data   = FUNC5(rr->size);

			if (rdata->rdi_data == NULL) {
				result = ERRSET_NOMEMORY;
				goto fail;
			}
			FUNC6(rdata->rdi_data, rr->rdata, rr->size);
		}
	}
	FUNC3(response);

	*res = rrset;
	return (ERRSET_SUCCESS);

fail:
	if (rrset != NULL)
		FUNC4(rrset);
	if (response != NULL)
		FUNC3(response);
	return (result);
}