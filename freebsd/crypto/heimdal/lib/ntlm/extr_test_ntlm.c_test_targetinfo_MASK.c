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
typedef  int /*<<< orphan*/  ti ;
struct ntlm_targetinfo {int avflags; int /*<<< orphan*/ * dnsservername; } ;
struct ntlm_buf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int FUNC1 (struct ntlm_buf*,int,struct ntlm_targetinfo*) ; 
 int FUNC2 (struct ntlm_targetinfo*,int,struct ntlm_buf*) ; 
 int /*<<< orphan*/  FUNC3 (struct ntlm_targetinfo*) ; 
 int /*<<< orphan*/  FUNC4 (struct ntlm_targetinfo*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static int
FUNC7(void)
{
    struct ntlm_targetinfo ti;
    struct ntlm_buf buf;
    const char *dnsservername = "dnsservername";
    int ret;

    FUNC4(&ti, 0, sizeof(ti));

    ti.dnsservername = FUNC5(dnsservername);
    ti.avflags = 1;
    ret = FUNC2(&ti, 1, &buf);
    if (ret)
	return ret;

    FUNC4(&ti, 0, sizeof(ti));

    ret = FUNC1(&buf, 1, &ti);
    if (ret)
	return ret;

    if (ti.dnsservername == NULL ||
	FUNC6(ti.dnsservername, dnsservername) != 0)
	FUNC0(1, "ti.dnshostname != %s", dnsservername);
    if (ti.avflags != 1)
	FUNC0(1, "ti.avflags != 1");

    FUNC3(&ti);

    return 0;
}