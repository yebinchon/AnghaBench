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
 int /*<<< orphan*/  FUNC1 () ; 

void *
FUNC2 (void *p, size_t n)
{
  p = FUNC0 (p, n);
  if (p == 0)
    FUNC1 ();
  return p;
}