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
struct type {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct type*,int) ; 
 scalar_t__ FUNC1 (struct type*,int) ; 
 int FUNC2 (struct type*) ; 
 int FUNC3 (struct type*) ; 
 struct type* FUNC4 (struct type*) ; 
 int FUNC5 (struct type*) ; 
 size_t v_private ; 
 size_t v_protected ; 
 size_t v_public ; 

__attribute__((used)) static void
FUNC6 (struct type *type, int children[3])
{
  int i;

  children[v_public] = 0;
  children[v_private] = 0;
  children[v_protected] = 0;

  for (i = FUNC3 (type); i < FUNC2 (type); i++)
    {
      /* If we have a virtual table pointer, omit it. */
      if (FUNC4 (type) == type && FUNC5 (type) == i)
	continue;

      if (FUNC1 (type, i))
	children[v_protected]++;
      else if (FUNC0 (type, i))
	children[v_private]++;
      else
	children[v_public]++;
    }
}