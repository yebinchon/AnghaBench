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
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  GDB_RESUMETHREAD ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ s ; 

__attribute__((used)) static int
FUNC2 (HANDLE h)
{
  if (s < 0)
    return 1;
  FUNC1 ("ResumeThread handle", GDB_RESUMETHREAD, h);
  return (int) FUNC0 ("SuspendThread result", GDB_RESUMETHREAD);
}