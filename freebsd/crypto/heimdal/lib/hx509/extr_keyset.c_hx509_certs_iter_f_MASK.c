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
typedef  int /*<<< orphan*/  hx509_cursor ;
typedef  int /*<<< orphan*/  hx509_context ;
typedef  int /*<<< orphan*/  hx509_certs ;
typedef  int /*<<< orphan*/ * hx509_cert ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,void*,hx509_cert) ; 

int
FUNC5(hx509_context context,
		   hx509_certs certs,
		   int (*func)(hx509_context, void *, hx509_cert),
		   void *ctx)
{
    hx509_cursor cursor;
    hx509_cert c;
    int ret;

    ret = FUNC3(context, certs, &cursor);
    if (ret)
	return ret;

    while (1) {
	ret = FUNC2(context, certs, cursor, &c);
	if (ret)
	    break;
	if (c == NULL) {
	    ret = 0;
	    break;
	}
	ret = (*func)(context, ctx, c);
	FUNC0(c);
	if (ret)
	    break;
    }

    FUNC1(context, certs, cursor);

    return ret;
}