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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ time_t ;
struct TYPE_2__ {size_t dname_len; scalar_t__ dname; void* rrset_class; void* type; } ;
struct ub_packed_rrset_key {TYPE_1__ rk; } ;
struct regional {int dummy; } ;
struct packed_rrset_data {size_t* rr_len; int /*<<< orphan*/ ** rr_data; scalar_t__* rr_ttl; } ;
typedef  int /*<<< orphan*/  sldns_buffer ;
typedef  int /*<<< orphan*/  rr ;
typedef  int /*<<< orphan*/  RES ;

/* Variables and functions */
 int LDNS_RR_BUF_SIZE ; 
 scalar_t__ LDNS_RR_TYPE_RRSIG ; 
 void* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 (struct regional*,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (char*,int /*<<< orphan*/ *,size_t*,size_t*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,size_t,size_t) ; 
 size_t FUNC8 (int /*<<< orphan*/ *,size_t,size_t) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,size_t,size_t) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,size_t,size_t) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (char*,char*,int) ; 

__attribute__((used)) static int
FUNC14(RES* ssl, sldns_buffer* buf, struct regional* region,
	struct ub_packed_rrset_key* rk, struct packed_rrset_data* d,
	unsigned int i, int is_rrsig, int* go_on, time_t now)
{
	uint8_t rr[LDNS_RR_BUF_SIZE];
	size_t rr_len = sizeof(rr), dname_len = 0;
	int status;

	/* read the line */
	if(!FUNC12(ssl, buf))
		return 0;
	if(FUNC13((char*)FUNC3(buf), "BADRR\n", 6) == 0) {
		*go_on = 0;
		return 1;
	}
	status = FUNC6((char*)FUNC3(buf), rr,
		&rr_len, &dname_len, 3600, NULL, 0, NULL, 0);
	if(status != 0) {
		FUNC1("error cannot parse rr: %s: %s",
			FUNC5(status),
			(char*)FUNC3(buf));
		return 0;
	}
	if(is_rrsig && FUNC11(rr, rr_len, dname_len)
		!= LDNS_RR_TYPE_RRSIG) {
		FUNC1("error expected rrsig but got %s",
			(char*)FUNC3(buf));
		return 0;
	}

	/* convert ldns rr into packed_rr */
	d->rr_ttl[i] = (time_t)FUNC10(rr, rr_len, dname_len) + now;
	FUNC4(buf);
	d->rr_len[i] = FUNC8(rr, rr_len, dname_len)+2;
	d->rr_data[i] = (uint8_t*)FUNC2(region, 
		FUNC9(rr, rr_len, dname_len), d->rr_len[i]);
	if(!d->rr_data[i]) {
		FUNC1("error out of memory");
		return 0;
	}

	/* if first entry, fill the key structure */
	if(i==0) {
		rk->rk.type = FUNC0(FUNC11(rr, rr_len, dname_len));
		rk->rk.rrset_class = FUNC0(FUNC7(rr, rr_len, dname_len));
		rk->rk.dname_len = dname_len;
		rk->rk.dname = FUNC2(region, rr, dname_len);
		if(!rk->rk.dname) {
			FUNC1("error out of memory");
			return 0;
		}
	}

	return 1;
}