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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 char* FUNC1 () ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC2(void) {
	FUNC0(stderr,
	    "usage:\n%s [-A|-S|-v|-V|-h|-D daemon|-O args|-s special|-m node|-o option...] special node [daemon args...]\n\n",
	    FUNC1());
}