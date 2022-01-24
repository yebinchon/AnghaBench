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
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 int /*<<< orphan*/  STRPWD ; 
 int /*<<< orphan*/  STRcwd ; 
 int /*<<< orphan*/  STRowd ; 
 int VAR_NOGLOB ; 
 int VAR_READWRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(Char *dp)
{
    /*
     * Don't call set() directly cause if the directory contains ` or
     * other junk characters glob will fail. 
     */
    FUNC0(STRowd, FUNC2(STRcwd), VAR_READWRITE|VAR_NOGLOB);
    FUNC0(STRcwd, dp, VAR_READWRITE|VAR_NOGLOB);
    FUNC1(STRPWD, dp);
}