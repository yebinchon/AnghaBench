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
 int NO ; 
 int YES ; 
 scalar_t__ FUNC0 (char*,char*) ; 

__attribute__((used)) static int FUNC1(char *tok, char *string)
{

    /*
     * If the token has the magic value "ALL" the match always succeeds.
     * Otherwise, return YES if the token fully matches the string.
     */

    if (FUNC0(tok, "ALL") == 0) {		/* all: always matches */
	return (YES);
    } else if (FUNC0(tok, string) == 0) {	/* try exact match */
	return (YES);
    }
    return (NO);
}