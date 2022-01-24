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
typedef  int ldns_rr_type ;
typedef  int /*<<< orphan*/  ldns_rr_list ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
#define  LDNS_RR_TYPE_DNSKEY 130 
#define  LDNS_RR_TYPE_DS 129 
#define  LDNS_RR_TYPE_RRSIG 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC8(FILE *fp, ldns_rr_list *rrlist, const char *usr) 
{
	size_t i;
	ldns_rr_type tp;

	for(i = 0; i < FUNC4(rrlist); i++) {
		tp = FUNC2(FUNC3(rrlist, i));
		if (i == 0 && tp != LDNS_RR_TYPE_RRSIG) {
			if (usr) {
				FUNC0(fp, "%s ", usr);
			}
		}
		switch(tp) {
		case LDNS_RR_TYPE_DNSKEY:
			FUNC5(fp, FUNC3(rrlist, i));
			break;
		case LDNS_RR_TYPE_RRSIG:
			FUNC7(fp, FUNC3(rrlist, i));
			break;
		case LDNS_RR_TYPE_DS:
			FUNC6(fp, FUNC3(rrlist, i));
			break;
		default:
			/* not handled */
			break;
		}
		FUNC1("\n", fp);
	}
}