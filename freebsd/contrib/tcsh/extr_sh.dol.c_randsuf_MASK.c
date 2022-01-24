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
typedef  int tcsh_number_t ;
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 

Char *
FUNC3(void) {
#ifndef WINNT_NATIVE
	struct timeval tv;
	(void) FUNC1(&tv, NULL);
	return FUNC2((((tcsh_number_t)tv.tv_sec) ^ 
	    ((tcsh_number_t)tv.tv_usec) ^
	    ((tcsh_number_t)FUNC0())) & 0x00ffffff);
#else
    return putn(getpid());
#endif
}