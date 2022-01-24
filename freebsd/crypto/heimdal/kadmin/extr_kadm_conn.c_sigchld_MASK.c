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
 int /*<<< orphan*/  WNOHANG ; 
 scalar_t__ FUNC1 (int,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static RETSIGTYPE
FUNC2(int sig)
{
    int status;
    /*
     * waitpid() is async safe. will return -1 or 0 on no more zombie
     * children
     */
    while ((FUNC1(-1, &status, WNOHANG)) > 0)
	;
    FUNC0(0);
}