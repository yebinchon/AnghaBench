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
struct fn_field {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct fn_field*,int) ; 

__attribute__((used)) static int
FUNC1 (int method, struct fn_field *fns_ptr, int index)
{
  if (method && FUNC0 (fns_ptr, index))
    return 1;
  else
    return 0;
}