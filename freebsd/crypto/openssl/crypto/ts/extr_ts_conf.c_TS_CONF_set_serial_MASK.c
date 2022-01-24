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
typedef  int /*<<< orphan*/  TS_serial_cb ;
typedef  int /*<<< orphan*/  TS_RESP_CTX ;
typedef  int /*<<< orphan*/  CONF ;

/* Variables and functions */
 int /*<<< orphan*/  ENV_SERIAL ; 
 char* FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ) ; 

int FUNC3(CONF *conf, const char *section, TS_serial_cb cb,
                       TS_RESP_CTX *ctx)
{
    int ret = 0;
    char *serial = FUNC0(conf, section, ENV_SERIAL);
    if (!serial) {
        FUNC2(section, ENV_SERIAL);
        goto err;
    }
    FUNC1(ctx, cb, serial);

    ret = 1;
 err:
    return ret;
}