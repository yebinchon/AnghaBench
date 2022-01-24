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
typedef  int ptrdiff_t ;
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 size_t cmdmax ; 
 int cmdp ; 
 int /*<<< orphan*/ * cmdstr ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static void
FUNC1(size_t s)
{
    Char *ncmdstr;
    ptrdiff_t d;

    cmdmax += s;
    ncmdstr = FUNC0(cmdstr, cmdmax * sizeof(*cmdstr));
    d = ncmdstr - cmdstr;
    cmdstr = ncmdstr;
    cmdp += d;
}