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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  str ;
typedef  scalar_t__ kadm5_ret_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,char*,int) ; 
 int /*<<< orphan*/  context ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  kadm_handle ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

int
FUNC4(void *opt, int argc, char **argv)
{
    uint32_t privs;
    char str[128];
    kadm5_ret_t ret;

    ret = FUNC1(kadm_handle, &privs);
    if(ret)
	FUNC2(context, ret, "kadm5_get_privs");
    else{
	ret =FUNC0(privs, str, sizeof(str));
	if (ret == 0)
	    FUNC3("%s\n", str);
	else
	    FUNC3("privs: 0x%x\n", (unsigned int)privs);
    }
    return 0;
}