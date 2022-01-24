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
struct minimal_symbol {int dummy; } ;
typedef  int CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct minimal_symbol*) ; 
 int FUNC1 (struct minimal_symbol*) ; 
 int TARGET_ADDR_BIT ; 
 char* FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4 (struct minimal_symbol *msymbol)
{
  char *tmp;

  if (TARGET_ADDR_BIT <= 32)
    tmp = FUNC2 (FUNC1 (msymbol)
				   & (CORE_ADDR) 0xffffffff,
				   "08l");
  else
    tmp = FUNC2 (FUNC1 (msymbol),
				   "016l");
  FUNC3 ("%s  %s\n",
		   tmp, FUNC0 (msymbol));
}