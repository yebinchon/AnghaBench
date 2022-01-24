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
typedef  int /*<<< orphan*/  hx509_context ;
typedef  int /*<<< orphan*/  hx509_cert ;
typedef  int /*<<< orphan*/  ExtKeyUsage ;

/* Variables and functions */
 int HX509_EXTENSION_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

int
FUNC4(hx509_context context,
		    hx509_cert cert,
		    ExtKeyUsage *e)
{
    int ret;

    FUNC3(e, 0, sizeof(*e));

    ret = FUNC1(FUNC0(cert), e);
    if (ret && ret != HX509_EXTENSION_NOT_FOUND) {
	FUNC2(context);
	return ret;
    }
    return 0;
}