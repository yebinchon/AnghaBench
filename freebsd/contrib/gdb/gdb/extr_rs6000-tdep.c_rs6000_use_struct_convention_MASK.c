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
 int FUNC0 (struct type*) ; 
 scalar_t__ FUNC1 (struct type*) ; 

__attribute__((used)) static int     
FUNC2 (int gcc_p, struct type *value_type)
{  
  if ((FUNC0 (value_type) == 16 || FUNC0 (value_type) == 8)
      && FUNC1 (value_type))
    return 0;                            
  return 1;
}