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
 void* FUNC0 (void*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 

void *
FUNC2 (void *md, size_t number, size_t size)
{
  void *mem;

  /* See libiberty/xmalloc.c.  This function need's to match that's
     semantics.  It never returns NULL.  */
  if (number == 0 || size == 0)
    {
      number = 1;
      size = 1;
    }

  mem = FUNC0 (md, number, size);
  if (mem == NULL)
    FUNC1 (number * size);

  return mem;
}