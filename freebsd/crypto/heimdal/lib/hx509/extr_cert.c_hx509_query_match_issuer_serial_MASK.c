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
struct TYPE_3__ {int match; int /*<<< orphan*/ * issuer_name; int /*<<< orphan*/ * serial; } ;
typedef  TYPE_1__ hx509_query ;
typedef  int /*<<< orphan*/  heim_integer ;
typedef  int /*<<< orphan*/  Name ;

/* Variables and functions */
 int ENOMEM ; 
 int HX509_QUERY_MATCH_ISSUER_NAME ; 
 int HX509_QUERY_MATCH_SERIALNUMBER ; 
 int FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (int) ; 

int
FUNC6(hx509_query *q,
				const Name *issuer,
				const heim_integer *serialNumber)
{
    int ret;
    if (q->serial) {
	FUNC2(q->serial);
	FUNC3(q->serial);
    }
    q->serial = FUNC5(sizeof(*q->serial));
    if (q->serial == NULL)
	return ENOMEM;
    ret = FUNC1(serialNumber, q->serial);
    if (ret) {
	FUNC3(q->serial);
	q->serial = NULL;
	return ret;
    }
    if (q->issuer_name) {
	FUNC4(q->issuer_name);
	FUNC3(q->issuer_name);
    }
    q->issuer_name = FUNC5(sizeof(*q->issuer_name));
    if (q->issuer_name == NULL)
	return ENOMEM;
    ret = FUNC0(issuer, q->issuer_name);
    if (ret) {
	FUNC3(q->issuer_name);
	q->issuer_name = NULL;
	return ret;
    }
    q->match |= HX509_QUERY_MATCH_SERIALNUMBER|HX509_QUERY_MATCH_ISSUER_NAME;
    return 0;
}