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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,size_t) ; 
 size_t FUNC1 (char const*) ; 
 char* FUNC2 (size_t) ; 

char   *
FUNC3(const char *cp, const char *dp)
{
    char   *ep;
    size_t cl, dl;

    if (!cp)
	cp = "";
    if (!dp)
	dp = "";
    cl = FUNC1(cp);
    dl = FUNC1(dp);
    ep = FUNC2((cl + dl + 1) * sizeof(char));
    FUNC0(ep, cp, cl);
    FUNC0(ep + cl, dp, dl + 1);
    return (ep);
}