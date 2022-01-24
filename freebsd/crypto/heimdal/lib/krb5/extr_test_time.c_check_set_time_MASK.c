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
struct timeval {scalar_t__ tv_sec; int /*<<< orphan*/  tv_usec; } ;
typedef  scalar_t__ krb5_timestamp ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(krb5_context context)
{
    krb5_error_code ret;
    krb5_timestamp sec;
    int32_t usec;
    struct timeval tv;
    int diff = 10;
    int diff2;

    FUNC1(&tv, NULL);

    ret = FUNC4(context, tv.tv_sec + diff, tv.tv_usec);
    if (ret)
	FUNC2(context, 1, ret, "krb5_us_timeofday");

    ret = FUNC5(context, &sec, &usec);
    if (ret)
	FUNC2(context, 1, ret, "krb5_us_timeofday");

    diff2 = FUNC0(sec - tv.tv_sec);

    if (diff2 < 9 || diff > 11)
	FUNC3(context, 1, "set time error: diff: %d",
		  FUNC0(sec - tv.tv_sec));
}