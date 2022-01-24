#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hx509_query ;
typedef  int /*<<< orphan*/  hx509_cursor ;
typedef  int /*<<< orphan*/  hx509_context ;
typedef  TYPE_2__* hx509_certs ;
typedef  int /*<<< orphan*/ * hx509_cert ;
struct TYPE_9__ {int /*<<< orphan*/  ops_data; TYPE_1__* ops; } ;
struct TYPE_8__ {int (* query ) (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ **) ;} ;

/* Variables and functions */
 int HX509_CERT_NOT_FOUND ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC5 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ **) ; 

int
FUNC8(hx509_context context,
		 hx509_certs certs,
		 const hx509_query *q,
		 hx509_cert *r)
{
    hx509_cursor cursor;
    hx509_cert c;
    int ret;

    *r = NULL;

    FUNC1(context, 0, q);

    if (certs->ops->query)
	return (*certs->ops->query)(context, certs, certs->ops_data, q, r);

    ret = FUNC5(context, certs, &cursor);
    if (ret)
	return ret;

    c = NULL;
    while (1) {
	ret = FUNC4(context, certs, cursor, &c);
	if (ret)
	    break;
	if (c == NULL)
	    break;
	if (FUNC0(context, q, c)) {
	    *r = c;
	    break;
	}
	FUNC2(c);
    }

    FUNC3(context, certs, cursor);
    if (ret)
	return ret;
    /**
     * Return HX509_CERT_NOT_FOUND if no certificate in certs matched
     * the query.
     */
    if (c == NULL) {
	FUNC6(context);
	return HX509_CERT_NOT_FOUND;
    }

    return 0;
}