#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ gdb_wince_result ;
typedef  int /*<<< orphan*/  c ;
struct TYPE_5__ {int /*<<< orphan*/  ContextFlags; } ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  TYPE_1__ CONTEXT ;

/* Variables and functions */
 int /*<<< orphan*/  GDB_GETTHREADCONTEXT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__,int,int /*<<< orphan*/ ,TYPE_1__*,int) ; 

__attribute__((used)) static void
FUNC5 (int s)
{
  CONTEXT c;
  HANDLE h = FUNC2 (L"GetThreadContext handle", s, GDB_GETTHREADCONTEXT);
  gdb_wince_result res;

  FUNC3 (&c, 0, sizeof (c));
  c.ContextFlags = FUNC1 (L"GetThreadContext flags", s, GDB_GETTHREADCONTEXT);

  res = (gdb_wince_result) FUNC0 (h, &c);
  FUNC4 (L"GetThreadContext data", res, s, GDB_GETTHREADCONTEXT,
	     &c, sizeof (c));
}