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
struct Strbuf {int dummy; } ;

/* Variables and functions */
 scalar_t__ tw_env ; 
 int FUNC0 (struct Strbuf*,struct Strbuf*,int*) ; 
 int FUNC1 (struct Strbuf*,struct Strbuf*,int*) ; 
 scalar_t__ tw_vptr ; 

int
FUNC2(struct Strbuf *res, struct Strbuf *dir, int *flags)
{
    int ret = 0;

    if (tw_vptr)
	ret = FUNC1(res, dir, flags);
    if (ret == 0 && tw_env)
	ret = FUNC0(res, dir, flags);
    return ret;
}