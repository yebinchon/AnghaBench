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
typedef  int /*<<< orphan*/  ShellState ;

/* Variables and functions */
 int SQLITE_ERROR ; 
 int FUNC0 (int /*<<< orphan*/ *,char**,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(
  ShellState *pState,             /* Current shell tool state */
  char **azArg,                   /* Array of arguments passed to dot command */
  int nArg                        /* Number of entries in azArg[] */
){
  int n;
  n = (nArg>=2 ? FUNC3(azArg[1]) : 0);
  if( n<1 || FUNC2(azArg[1], "fkey-indexes", n) ) goto usage;
  return FUNC0(pState, azArg, nArg);

 usage:
  FUNC1(stderr, "Usage %s sub-command ?switches...?\n", azArg[0]);
  FUNC1(stderr, "Where sub-commands are:\n");
  FUNC1(stderr, "    fkey-indexes\n");
  return SQLITE_ERROR;
}