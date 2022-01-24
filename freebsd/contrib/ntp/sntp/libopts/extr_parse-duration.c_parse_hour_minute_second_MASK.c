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
typedef  int /*<<< orphan*/  cch_t ;

/* Variables and functions */
 scalar_t__ BAD_TIME ; 
 int /*<<< orphan*/  EINVAL ; 
 int SEC_PER_HR ; 
 int SEC_PER_MIN ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static time_t
FUNC3 (cch_t * pz, cch_t * ps)
{
  time_t res = 0;

  res = FUNC0 (0, &pz, ps, SEC_PER_HR);

  pz++;
  ps = FUNC1 (pz, ':');
  if (ps == NULL)
    {
      errno = EINVAL;
      return BAD_TIME;
    }

  res = FUNC0 (res, &pz, ps, SEC_PER_MIN);

  pz++;
  ps = pz + FUNC2 (pz);
  return FUNC0 (res, &pz, ps, 1);
}