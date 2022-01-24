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
 unsigned int FUNC0 (struct type*) ; 
 int FUNC1 (struct type*) ; 

__attribute__((used)) static int
FUNC2 (struct type *type)
{
  unsigned length = FUNC0 (type);
  if (length > 8)
    return 0;

  return FUNC1 (type);
}