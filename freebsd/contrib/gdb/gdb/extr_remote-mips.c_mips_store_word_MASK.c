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
 int errno ; 
 int /*<<< orphan*/  mips_receive_wait ; 
 unsigned int FUNC0 (char,int /*<<< orphan*/ ,unsigned int,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,unsigned int) ; 

__attribute__((used)) static int
FUNC2 (CORE_ADDR addr, unsigned int val, char *old_contents)
{
  int err;
  unsigned int oldcontents;

  oldcontents = FUNC0 ('D', addr, val, &err,
			      mips_receive_wait, NULL);
  if (err)
    {
      /* Data space failed; try instruction space.  */
      oldcontents = FUNC0 ('I', addr, val, &err,
				  mips_receive_wait, NULL);
      if (err)
	return errno;
    }
  if (old_contents != NULL)
    FUNC1 (old_contents, 4, oldcontents);
  return 0;
}