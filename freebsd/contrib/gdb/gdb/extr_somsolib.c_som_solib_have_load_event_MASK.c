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
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  ARG0_REGNUM ; 
 scalar_t__ SHL_LOAD ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

int
FUNC1 (int pid)
{
  CORE_ADDR event_kind;

  event_kind = FUNC0 (ARG0_REGNUM);
  return (event_kind == SHL_LOAD);
}