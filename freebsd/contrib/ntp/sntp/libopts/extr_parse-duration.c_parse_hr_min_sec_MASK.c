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
typedef  char cch_t ;

/* Variables and functions */
 int /*<<< orphan*/  BAD_TIME ; 
 scalar_t__ EINVAL ; 
 char NUL ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC0 (unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ,int) ; 
 unsigned long FUNC2 (char*,char**,int) ; 

__attribute__((used)) static time_t
FUNC3 (time_t start, cch_t * pz)
{
  int lpct = 0;

  errno = 0;

  /* For as long as our scanner pointer points to a colon *AND*
     we've not looped before, then keep looping.  (two iterations max) */
  while ((*pz == ':') && (lpct++ <= 1))
    {
      unsigned long v = FUNC2 (pz+1, &pz, 10);

      if (errno != 0)
        return BAD_TIME;

      start = FUNC1 (v, start, 60);

      if (errno != 0)
        return BAD_TIME;
    }

  /* allow for trailing spaces */
  while (FUNC0 ((unsigned char)*pz))
    pz++;
  if (*pz != NUL)
    {
      errno = EINVAL;
      return BAD_TIME;
    }

  return start;
}