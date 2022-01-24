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
typedef  int /*<<< orphan*/  ptid_t ;
typedef  enum target_signal { ____Placeholder_target_signal } target_signal ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void
FUNC2 (ptid_t ptid, int step, enum target_signal sig)
{
  if (step)
    {
      FUNC1 ("ST\r");
      /* Wait for the echo.  */
      FUNC0 ("ST\r", 1);
    }
  else
    {
      FUNC1 ("GO\r");
      /* Swallow the echo.  */
      FUNC0 ("GO\r", 1);
    }
}