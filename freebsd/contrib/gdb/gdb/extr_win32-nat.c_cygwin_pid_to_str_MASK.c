#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ptid_t ;
struct TYPE_2__ {int /*<<< orphan*/  dwProcessId; } ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__ current_event ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int,...) ; 

char *
FUNC2 (ptid_t ptid)
{
  static char buf[80];
  int pid = FUNC0 (ptid);

  if ((DWORD) pid == current_event.dwProcessId)
    FUNC1 (buf, "process %d", pid);
  else
    FUNC1 (buf, "thread %ld.0x%x", current_event.dwProcessId, pid);
  return buf;
}