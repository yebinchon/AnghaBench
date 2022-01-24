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

/* Variables and functions */
 int FUNC0 (char**,char,int*) ; 

__attribute__((used)) static int
FUNC1 (char **pp, int *typenums)
{
  int nbits;
  if (**pp == '(')
    {
      (*pp)++;
      typenums[0] = FUNC0 (pp, ',', &nbits);
      if (nbits != 0)
	return -1;
      typenums[1] = FUNC0 (pp, ')', &nbits);
      if (nbits != 0)
	return -1;
    }
  else
    {
      typenums[0] = 0;
      typenums[1] = FUNC0 (pp, 0, &nbits);
      if (nbits != 0)
	return -1;
    }
  return 0;
}