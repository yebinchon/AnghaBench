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
 int FUNC0 (int,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

__attribute__((used)) static int
FUNC2 (int recsize, char **buff, int *value)
{
  int count;

  /* Add the checksum (without updating the value): */
  FUNC1 (*buff, "/C");
  count = FUNC0 (*value, (*buff + 2), 12, NULL);
  *buff += (count + 2);
  FUNC1 (*buff, "\n");
  *buff += 2;			/* include zero terminator */
  /* Forcing a checksum validation clears the sum: */
  *value = 0;
  return (recsize + count + 3);
}