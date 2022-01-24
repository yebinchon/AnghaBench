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
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  RDP_MEM_READ ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int,int*,int*) ; 

__attribute__((used)) static int
FUNC1 (CORE_ADDR memaddr, char *buf, int len)
{
  int res;
  int val;
  FUNC0 ("bww-S-P-V",
	    RDP_MEM_READ, memaddr, len,
	    buf, len,
	    &res, &val);
  if (res)
    {
      return val;
    }
  return len;
}