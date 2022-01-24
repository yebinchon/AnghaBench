#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ldns_rr ;
struct TYPE_3__ {char* name; } ;
typedef  TYPE_1__ ldns_lookup_table ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
#define  LDNS_RR_TYPE_DNSKEY 130 
#define  LDNS_RR_TYPE_DS 129 
#define  LDNS_RR_TYPE_RRSIG 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ldns_rr_classes ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(FILE *fp, ldns_rr *r)
{
	ldns_lookup_table *lt;
        lt = FUNC1(ldns_rr_classes, FUNC2(r));
        if (lt) {
               	FUNC0(fp, " %s", lt->name);
        } else {
        	FUNC0(fp, " CLASS%d", FUNC2(r));
        }
	/* okay not THE way - but the quickest */
	switch (FUNC3(r)) {
		case LDNS_RR_TYPE_RRSIG:
			FUNC0(fp, " RRSIG ");
			break;
		case LDNS_RR_TYPE_DNSKEY:
			FUNC0(fp, " DNSKEY ");
			break;
		case LDNS_RR_TYPE_DS:
			FUNC0(fp, " DS ");
			break;
		default:
			break;
	}
}