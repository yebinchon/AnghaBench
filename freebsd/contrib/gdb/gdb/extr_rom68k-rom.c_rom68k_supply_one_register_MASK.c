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
typedef  int ULONGEST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MAX_REGISTER_SIZE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (unsigned char) ; 
 scalar_t__ FUNC3 (unsigned char) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int,unsigned char*) ; 

__attribute__((used)) static char *
FUNC6 (int regno, unsigned char *hex)
{
  ULONGEST value;
  unsigned char regbuf[MAX_REGISTER_SIZE];

  value = 0;
  while (*hex != '\0')
    if (FUNC2 (*hex))
      value = (value * 16) + FUNC1 (*hex++);
    else
      break;

  /* Skip any whitespace.  */
  while (FUNC3 (*hex))
    hex++;

  FUNC4 (regbuf, FUNC0 (regno), value);
  FUNC5 (regno, regbuf);

  return hex;
}