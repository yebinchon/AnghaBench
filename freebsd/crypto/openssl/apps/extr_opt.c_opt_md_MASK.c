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
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * FUNC1 (char const*) ; 
 int /*<<< orphan*/  bio_err ; 
 int /*<<< orphan*/  prog ; 

int FUNC2(const char *name, const EVP_MD **mdp)
{
    *mdp = FUNC1(name);
    if (*mdp != NULL)
        return 1;
    FUNC0(bio_err, "%s: Unrecognized flag %s\n", prog, name);
    return 0;
}