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
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int i386_num_regs ; 
 int* i386_regmap ; 

__attribute__((used)) static void
FUNC1 (void *buf)
{
  int i;

  for (i = 0; i < i386_num_regs; i++)
    FUNC0 (i, ((char *) buf) + i386_regmap[i]);

}