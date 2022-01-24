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
struct module_env {int /*<<< orphan*/  cfg; void** modinfo; } ;
struct dns64_env {int /*<<< orphan*/  ignore_aaaa; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dns64_env*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int
FUNC4(struct module_env* env, int id)
{
    struct dns64_env* dns64_env =
        (struct dns64_env*)FUNC0(1, sizeof(struct dns64_env));
    if (!dns64_env) {
        FUNC2("malloc failure");
        return 0;
    }
    env->modinfo[id] = (void*)dns64_env;
    FUNC3(&dns64_env->ignore_aaaa);
    if (!FUNC1(dns64_env, env->cfg)) {
        FUNC2("dns64: could not apply configuration settings.");
        return 0;
    }
    return 1;
}