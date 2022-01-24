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
 void* FUNC0 (void*,size_t) ; 
 void* FUNC1 (void*,size_t) ; 

__attribute__((used)) static void *
FUNC2 (void *md, void *ptr, size_t size)
{
  if (ptr == 0)			/* Guard against old realloc's */
    return FUNC0 (md, size);
  else
    return FUNC1 (ptr, size);	/* NOTE: GDB's only call to ralloc() */
}