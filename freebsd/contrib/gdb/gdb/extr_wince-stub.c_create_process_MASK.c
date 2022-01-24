#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pi ;
typedef  int /*<<< orphan*/  gdb_wince_result ;
struct TYPE_4__ {int /*<<< orphan*/  hProcess; } ;
typedef  TYPE_1__ PROCESS_INFORMATION ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GDB_CREATEPROCESS ; 
 int /*<<< orphan*/  curproc ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,TYPE_1__*,int) ; 

__attribute__((used)) static void
FUNC4 (int s)
{
  LPWSTR exec_file = FUNC2 (L"CreateProcess exec_file", s, GDB_CREATEPROCESS, NULL);
  LPWSTR args = FUNC2 (L"CreateProcess args", s, GDB_CREATEPROCESS, NULL);
  DWORD flags = FUNC1 (L"CreateProcess flags", s, GDB_CREATEPROCESS);
  PROCESS_INFORMATION pi;
  gdb_wince_result res;

  res = FUNC0 (exec_file,
			args,	/* command line */
			NULL,	/* Security */
			NULL,	/* thread */
			FALSE,	/* inherit handles */
			flags,	/* start flags */
			NULL,
			NULL,	/* current directory */
			NULL,
			&pi);
  FUNC3 (L"CreateProcess", res, s, GDB_CREATEPROCESS, &pi, sizeof (pi));
  curproc = pi.hProcess;
}