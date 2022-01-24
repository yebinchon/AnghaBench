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
struct target_ops {int dummy; } ;

/* Variables and functions */
 int RDIError_NoError ; 
 int /*<<< orphan*/  RDIInfo_Icebreaker ; 
 int /*<<< orphan*/  RDIInfo_Step ; 
 int /*<<< orphan*/  RDIInfo_Target ; 
 int FUNC0 (int /*<<< orphan*/ ,unsigned long*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void
FUNC3 (struct target_ops *ignore)
{
  char *file = "nothing";
  int rslt;
  unsigned long arg1, arg2;

  rslt = FUNC0 (RDIInfo_Target, &arg1, &arg2);
  if (rslt != RDIError_NoError)
    {
      FUNC1 ("RDI_info: %s\n", FUNC2 (rslt));
    }
  if (arg1 & (1 << 15))
    FUNC1 ("Target supports Thumb code.\n");
  if (arg1 & (1 << 14))
    FUNC1 ("Target can do profiling.\n");
  if (arg1 & (1 << 4))
    FUNC1 ("Target is real hardware.\n");

  rslt = FUNC0 (RDIInfo_Step, &arg1, &arg2);
  if (rslt != RDIError_NoError)
    {
      FUNC1 ("RDI_info: %s\n", FUNC2 (rslt));
    }
  FUNC1 ("Target can%s single-step.\n", (arg1 & 0x4 ? "" : "not"));

  rslt = FUNC0 (RDIInfo_Icebreaker, &arg1, &arg2);
  if (rslt != RDIError_NoError)
    {
      FUNC1 ("RDI_info: %s\n", FUNC2 (rslt));
    }
  else
    FUNC1 ("Target includes an EmbeddedICE.\n");
}