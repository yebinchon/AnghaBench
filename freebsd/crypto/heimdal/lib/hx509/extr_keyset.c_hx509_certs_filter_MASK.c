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
typedef  int /*<<< orphan*/  hx509_query ;
typedef  int /*<<< orphan*/  hx509_cursor ;
typedef  int /*<<< orphan*/  hx509_context ;
typedef  int /*<<< orphan*/  hx509_certs ;
typedef  int /*<<< orphan*/ * hx509_cert ;

/* Variables and functions */
 int HX509_CERT_NOT_FOUND ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

int
FUNC10(hx509_context context,
		   hx509_certs certs,
		   const hx509_query *q,
		   hx509_certs *result)
{
    hx509_cursor cursor;
    hx509_cert c;
    int ret, found = 0;

    FUNC1(context, 0, q);

    ret = FUNC6(context, "MEMORY:filter-certs", 0,
			   NULL, result);
    if (ret)
	return ret;

    ret = FUNC8(context, certs, &cursor);
    if (ret) {
	FUNC5(result);
	return ret;
    }

    c = NULL;
    while (1) {
	ret = FUNC7(context, certs, cursor, &c);
	if (ret)
	    break;
	if (c == NULL)
	    break;
	if (FUNC0(context, q, c)) {
	    FUNC3(context, *result, c);
	    found = 1;
	}
	FUNC2(c);
    }

    FUNC4(context, certs, cursor);
    if (ret) {
	FUNC5(result);
	return ret;
    }

    /**
     * Return HX509_CERT_NOT_FOUND if no certificate in certs matched
     * the query.
     */
    if (!found) {
	FUNC5(result);
	FUNC9(context);
	return HX509_CERT_NOT_FOUND;
    }

    return 0;
}