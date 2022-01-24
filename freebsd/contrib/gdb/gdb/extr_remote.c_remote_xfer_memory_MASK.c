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
struct mem_attrib {int dummy; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  current_gdbarch ; 
 int /*<<< orphan*/  current_regcache ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC3 (CORE_ADDR mem_addr, char *buffer, int mem_len,
		    int should_write, struct mem_attrib *attrib,
		    struct target_ops *target)
{
  CORE_ADDR targ_addr;
  int targ_len;
  int res;

  /* Should this be the selected frame?  */
  FUNC0 (current_gdbarch, current_regcache,
					 mem_addr, mem_len,
					 &targ_addr, &targ_len);
  if (targ_len <= 0)
    return 0;

  if (should_write)
    res = FUNC2 (targ_addr, buffer, targ_len);
  else
    res = FUNC1 (targ_addr, buffer, targ_len);

  return res;
}