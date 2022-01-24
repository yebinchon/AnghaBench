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
typedef  int /*<<< orphan*/  hx509_context ;
typedef  TYPE_1__* hx509_ca_tbs ;
typedef  int /*<<< orphan*/  heim_bit_string ;
struct TYPE_3__ {int /*<<< orphan*/  issuerUniqueID; int /*<<< orphan*/  subjectUniqueID; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int
FUNC2(hx509_context context,
			hx509_ca_tbs tbs,
			const heim_bit_string *subjectUniqueID,
			const heim_bit_string *issuerUniqueID)
{
    int ret;

    FUNC1(&tbs->subjectUniqueID);
    FUNC1(&tbs->issuerUniqueID);

    if (subjectUniqueID) {
	ret = FUNC0(subjectUniqueID, &tbs->subjectUniqueID);
	if (ret)
	    return ret;
    }

    if (issuerUniqueID) {
	ret = FUNC0(issuerUniqueID, &tbs->issuerUniqueID);
	if (ret)
	    return ret;
    }

    return 0;
}