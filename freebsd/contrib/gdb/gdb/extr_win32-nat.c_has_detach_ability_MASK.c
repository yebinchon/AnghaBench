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
typedef  int /*<<< orphan*/ * HMODULE ;

/* Variables and functions */
 void* DebugActiveProcessStop ; 
 void* DebugSetProcessKillOnExit ; 
 void* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 

__attribute__((used)) static int
FUNC2 (void)
{
  static HMODULE kernel32 = NULL;

  if (!kernel32)
    kernel32 = FUNC1 ("kernel32.dll");
  if (kernel32)
    {
      if (!DebugSetProcessKillOnExit)
	DebugSetProcessKillOnExit = FUNC0 (kernel32,
						 "DebugSetProcessKillOnExit");
      if (!DebugActiveProcessStop)
	DebugActiveProcessStop = FUNC0 (kernel32,
						 "DebugActiveProcessStop");
      if (DebugSetProcessKillOnExit && DebugActiveProcessStop)
	return 1;
    }
  return 0;
}