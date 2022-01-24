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
typedef  scalar_t__ time_t ;
typedef  scalar_t__ cch_t ;

/* Variables and functions */
 scalar_t__ BAD_TIME ; 
 int /*<<< orphan*/  EINVAL ; 
 scalar_t__ NUL ; 
 int SEC_PER_HR ; 
 int SEC_PER_MIN ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC0 (unsigned char) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__**,scalar_t__*,int) ; 
 scalar_t__* FUNC2 (scalar_t__*,char) ; 

__attribute__((used)) static time_t
FUNC3 (cch_t * pz)
{
  time_t res = 0;
  cch_t * ps = FUNC2 (pz, 'H');
  if (ps != NULL)
    {
      res = FUNC1 (0, &pz, ps, SEC_PER_HR);
      pz++;
    }

  ps = FUNC2 (pz, 'M');
  if (ps != NULL)
    {
      res = FUNC1 (res, &pz, ps, SEC_PER_MIN);
      pz++;
    }

  ps = FUNC2 (pz, 'S');
  if (ps != NULL)
    {
      res = FUNC1 (res, &pz, ps, 1);
      pz++;
    }

  while (FUNC0 ((unsigned char)*pz))
    pz++;
  if (*pz != NUL)
    {
      errno = EINVAL;
      return BAD_TIME;
    }

  return res;
}