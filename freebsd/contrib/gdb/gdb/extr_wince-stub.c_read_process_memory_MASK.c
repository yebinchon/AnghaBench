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
typedef  scalar_t__ gdb_wince_result ;
typedef  scalar_t__ gdb_wince_len ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  GDB_READPROCESSMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC6 (int s)
{
  HANDLE h = FUNC1 (L"ReadProcessMemory handle", s, GDB_READPROCESSMEMORY);
  LPVOID p = FUNC3 (L"ReadProcessMemory base", s, GDB_READPROCESSMEMORY);
  gdb_wince_len len = FUNC2 (L"ReadProcessMemory size", s, GDB_READPROCESSMEMORY);
  LPVOID buf = FUNC4 ((unsigned int) len);
  DWORD outlen;
  gdb_wince_result res;

  outlen = 0;
  res = (gdb_wince_result) FUNC0 (h, p, buf, len, &outlen);
  FUNC5 (L"ReadProcessMemory data", res, s, GDB_READPROCESSMEMORY,
	     buf, (gdb_wince_len) outlen);
}