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
typedef  int /*<<< orphan*/  ULONGEST ;
typedef  int CORE_ADDR ;

/* Variables and functions */
 int DEPRECATED_REGISTER_SIZE ; 
 scalar_t__ FUNC0 (int,int) ; 
 int MAX_REGISTER_SIZE ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int) ; 

CORE_ADDR
FUNC3 (CORE_ADDR sp, ULONGEST word)
{
  int len = DEPRECATED_REGISTER_SIZE;
  char buffer[MAX_REGISTER_SIZE];

  FUNC1 (buffer, len, word);
  if (FUNC0 (1, 2))
    {
      /* stack grows downward */
      sp -= len;
      FUNC2 (sp, buffer, len);
    }
  else
    {
      /* stack grows upward */
      FUNC2 (sp, buffer, len);
      sp += len;
    }

  return sp;
}