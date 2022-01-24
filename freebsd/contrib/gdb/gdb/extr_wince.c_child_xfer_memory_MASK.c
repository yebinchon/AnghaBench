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
 int FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int res ; 

int
FUNC2 (CORE_ADDR memaddr, char *our, int len, int write,
		   struct mem_attrib *attrib,
		   struct target_ops *target)
{
  if (len <= 0)
    return 0;

  if (write)
    res = FUNC1 (memaddr, our, len);
  else
    res = FUNC0 (memaddr, our, len);

  return res;
}