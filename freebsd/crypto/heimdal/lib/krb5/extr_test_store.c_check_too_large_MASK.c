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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  too_big_sizes ;
typedef  int /*<<< orphan*/  krb5_storage ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_data ;
typedef  int /*<<< orphan*/  krb5_context ;

/* Variables and functions */
 scalar_t__ HEIM_ERR_TOO_BIG ; 
 int INT_MAX ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned long) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC5(krb5_context context, krb5_storage *sp)
{
    uint32_t too_big_sizes[] = { INT_MAX, INT_MAX / 2, INT_MAX / 4, INT_MAX / 8 + 1};
    krb5_error_code ret;
    krb5_data data;
    size_t n;

    for (n = 0; n < sizeof(too_big_sizes) / sizeof(too_big_sizes); n++) {
	FUNC3(sp, 0);
	FUNC4(sp, too_big_sizes[n]);
	FUNC2(sp, 0, SEEK_SET);
	ret = FUNC1(sp, &data);
	if (ret != HEIM_ERR_TOO_BIG)
	    FUNC0(1, "not too big: %lu", (unsigned long)n);
    }
}