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
typedef  int /*<<< orphan*/  time_t ;

/* Variables and functions */
 int /*<<< orphan*/  BAD_TIME ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (unsigned char) ; 
 scalar_t__ FUNC1 (unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

time_t
FUNC5 (char const * pz)
{
  while (FUNC1 ((unsigned char)*pz))
    pz++;

  switch (*pz)
    {
    case 'P':
      return FUNC3 (pz + 1);

    case 'T':
      return FUNC4 (pz + 1);

    default:
      if (FUNC0 ((unsigned char)*pz))
        return FUNC2 (pz);

      errno = EINVAL;
      return BAD_TIME;
    }
}