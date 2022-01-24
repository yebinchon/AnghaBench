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
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mips_receive_wait ; 
 unsigned int FUNC1 (char,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int
FUNC4 (CORE_ADDR addr)
{
  unsigned int val;
  int err;

  val = FUNC1 ('d', addr, 0, &err, mips_receive_wait, NULL);
  if (err)
    {
      /* Data space failed; try instruction space.  */
      val = FUNC1 ('i', addr, 0, &err,
			  mips_receive_wait, NULL);
      if (err)
	FUNC0 ("Can't read address 0x%s: %s",
		    FUNC2 (addr), FUNC3 (errno));
    }
  return val;
}