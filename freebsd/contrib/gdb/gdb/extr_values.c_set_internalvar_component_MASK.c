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
struct value {int dummy; } ;
struct internalvar {struct value* value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (struct value*) ; 
 int /*<<< orphan*/  FUNC2 (struct value*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct value*) ; 

void
FUNC6 (struct internalvar *var, int offset, int bitpos,
			   int bitsize, struct value *newval)
{
  char *addr = FUNC1 (var->value) + offset;

  if (bitsize)
    FUNC4 (addr, FUNC5 (newval),
		  bitpos, bitsize);
  else
    FUNC3 (addr, FUNC1 (newval), FUNC0 (FUNC2 (newval)));
}