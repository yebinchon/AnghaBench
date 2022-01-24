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
typedef  int /*<<< orphan*/  gdb_wince_len ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/  LPCVOID ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  GDB_READPROCESSMEMORY ; 
 int FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ s ; 

__attribute__((used)) static int
FUNC4 (HANDLE h, LPCVOID where, LPVOID buf, gdb_wince_len len, gdb_wince_len * nbytes)
{
  if (s < 0)
    return 1;
  FUNC1 ("ReadProcessMemory handle", GDB_READPROCESSMEMORY, h);
  FUNC3 ("ReadProcessMemory location", GDB_READPROCESSMEMORY, where);
  FUNC2 ("ReadProcessMemory size", GDB_READPROCESSMEMORY, len);

  return FUNC0 ("ReadProcessMemory buf", GDB_READPROCESSMEMORY, buf, nbytes);
}