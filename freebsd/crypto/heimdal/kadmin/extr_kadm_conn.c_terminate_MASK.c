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
typedef  int /*<<< orphan*/  RETSIGTYPE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIG_IGN ; 
 scalar_t__ doing_useful_work ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 scalar_t__ pgrp ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int term_flag ; 

__attribute__((used)) static RETSIGTYPE
FUNC5(int sig)
{
    if(FUNC2() == pgrp) {
	/* parent */
	term_flag = 1;
	FUNC4(sig, SIG_IGN);
	FUNC3(pgrp, sig);
    } else {
	/* child */
	if(doing_useful_work)
	    term_flag = 1;
	else
	    FUNC1(0);
    }
    FUNC0(0);
}