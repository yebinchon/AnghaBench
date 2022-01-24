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
typedef  int /*<<< orphan*/  res ;
typedef  int /*<<< orphan*/  gdb_wince_result ;
typedef  int /*<<< orphan*/  LPCONTEXT ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  GDB_SETTHREADCONTEXT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC4 (int s)
{
  gdb_wince_result res;
  HANDLE h = FUNC1 (L"SetThreadContext handle", s, GDB_SETTHREADCONTEXT);
  LPCONTEXT pc = (LPCONTEXT) FUNC2 (L"SetThreadContext context", s,
					GDB_SETTHREADCONTEXT, NULL);

  res = FUNC0 (h, pc);
  FUNC3 (L"SetThreadContext result", res, s, GDB_SETTHREADCONTEXT,
	     &res, sizeof (res));
}