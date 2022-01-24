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
struct frame_info {int dummy; } ;

/* Variables and functions */
 scalar_t__ PS_REGNUM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct value* FUNC1 (scalar_t__,struct frame_info*) ; 

__attribute__((used)) static struct value *
FUNC2 (struct frame_info *frame)
{
#ifdef PS_REGNUM
  if (PS_REGNUM >= 0)
    return value_of_register (PS_REGNUM, frame);
#endif
  FUNC0 ("Standard register ``$ps'' is not available for this target");
}