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
typedef  int /*<<< orphan*/  TS_RESP_CTX ;
typedef  int /*<<< orphan*/  CONF ;

/* Variables and functions */
 int /*<<< orphan*/  ENV_CLOCK_PRECISION_DIGITS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,long*) ; 
 long TS_MAX_CLOCK_PRECISION_DIGITS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,long) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ) ; 

int FUNC3(CONF *conf, const char *section,
                                       TS_RESP_CTX *ctx)
{
    int ret = 0;
    long digits = 0;

    /*
     * If not specified, set the default value to 0, i.e. sec precision
     */
    if (!FUNC0(conf, section, ENV_CLOCK_PRECISION_DIGITS,
                            &digits))
        digits = 0;
    if (digits < 0 || digits > TS_MAX_CLOCK_PRECISION_DIGITS) {
        FUNC2(section, ENV_CLOCK_PRECISION_DIGITS);
        goto err;
    }

    if (!FUNC1(ctx, digits))
        goto err;

    return 1;
 err:
    return ret;
}