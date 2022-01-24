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
 int FUNC0 (int,char*,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

__attribute__((used)) static int
FUNC2 (int recsize, char **buff, int *amount, unsigned int *chksum)
{
  int count;

  FUNC1 (*buff, "/Z");
  count = FUNC0 (*amount, (*buff + 2), 12, chksum);
  *buff += (count + 2);
  *amount = 0;
  return (recsize + count + 2);
}