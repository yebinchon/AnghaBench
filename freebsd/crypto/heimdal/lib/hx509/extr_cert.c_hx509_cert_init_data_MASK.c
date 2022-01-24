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
typedef  int /*<<< orphan*/  Certificate ;

/* Variables and functions */
 int HX509_EXTRA_DATA_AFTER_STRUCTURE ; 
 int FUNC0 (void const*,size_t,int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 

int
FUNC4(hx509_context context,
		     const void *ptr,
		     size_t len,
		     hx509_cert *cert)
{
    Certificate t;
    size_t size;
    int ret;

    ret = FUNC0(ptr, len, &t, &size);
    if (ret) {
	FUNC3(context, 0, ret, "Failed to decode certificate");
	return ret;
    }
    if (size != len) {
	FUNC1(&t);
	FUNC3(context, 0, HX509_EXTRA_DATA_AFTER_STRUCTURE,
			       "Extra data after certificate");
	return HX509_EXTRA_DATA_AFTER_STRUCTURE;
    }

    ret = FUNC2(context, &t, cert);
    FUNC1(&t);
    return ret;
}