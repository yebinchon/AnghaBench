#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct val_anchors {int dummy; } ;
struct trust_anchor {int dummy; } ;
struct autr_ta {int dummy; } ;
typedef  int /*<<< orphan*/  rr ;

/* Variables and functions */
 int LDNS_RR_BUF_SIZE ; 
 scalar_t__ LDNS_RR_TYPE_DNSKEY ; 
 scalar_t__ LDNS_RR_TYPE_DS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct autr_ta* FUNC1 (struct val_anchors*,int /*<<< orphan*/ *,size_t,size_t,struct trust_anchor**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (char*,int /*<<< orphan*/ *,size_t*,size_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC8 (char*,char) ; 

__attribute__((used)) static struct autr_ta*
FUNC9(struct val_anchors* anchors, char* str, 
	struct trust_anchor** tp, uint8_t* origin, size_t origin_len,
	uint8_t** prev, size_t* prev_len, int* skip)
{
	uint8_t rr[LDNS_RR_BUF_SIZE];
	size_t rr_len = sizeof(rr), dname_len;
	uint8_t* drr;
	int lstatus;
        if (!FUNC8(str, ';')) {
		*skip = 1;
                return NULL; /* empty line */
	}
	if(0 != (lstatus = FUNC6(str, rr, &rr_len, &dname_len,
		0, origin, origin_len, *prev, *prev_len)))
	{
		FUNC3("ldns error while converting string to RR at%d: %s: %s",
			FUNC0(lstatus),
			FUNC5(lstatus), str);
		return NULL;
	}
	FUNC2(*prev);
	*prev = FUNC4(rr, dname_len);
	*prev_len = dname_len;
	if(!*prev) {
		FUNC3("malloc failure in add_trustanchor");
		return NULL;
	}
	if(FUNC7(rr, rr_len, dname_len)!=LDNS_RR_TYPE_DNSKEY &&
		FUNC7(rr, rr_len, dname_len)!=LDNS_RR_TYPE_DS) {
		*skip = 1;
		return NULL; /* only DS and DNSKEY allowed */
	}
	drr = FUNC4(rr, rr_len);
	if(!drr) {
		FUNC3("malloc failure in add trustanchor");
		return NULL;
	}
	return FUNC1(anchors, drr, rr_len, dname_len, tp);
}