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
typedef  size_t uint32_t ;
typedef  int /*<<< orphan*/  krb5_storage ;
typedef  int krb5_error_code ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t LAST_FRAGMENT ; 
 int FUNC1 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static int
FUNC3(krb5_storage *sp, krb5_storage *msg)
{
    krb5_error_code ret;
    uint32_t len;
    int last_fragment;
    size_t total_len = 0;

    do {
	ret = FUNC1(sp, &len);
	if (ret)
	    return ret;

	last_fragment = (len & LAST_FRAGMENT);
	len &= ~LAST_FRAGMENT;

	FUNC0(FUNC2(sp, msg, len));
	total_len += len;

    } while(!last_fragment || total_len == 0);

    return 0;
}