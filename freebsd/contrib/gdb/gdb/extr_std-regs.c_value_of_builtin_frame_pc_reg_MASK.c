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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ PC_REGNUM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (struct value*) ; 
 int /*<<< orphan*/  FUNC3 (struct value*) ; 
 struct value* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  builtin_type_void_data_ptr ; 
 int /*<<< orphan*/  FUNC5 (struct frame_info*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct value* FUNC7 (scalar_t__,struct frame_info*) ; 

__attribute__((used)) static struct value *
FUNC8 (struct frame_info *frame)
{
  if (PC_REGNUM >= 0)
    return FUNC7 (PC_REGNUM, frame);
  else
    {
      struct value *val = FUNC4 (builtin_type_void_data_ptr);
      char *buf = FUNC2 (val);
      if (frame == NULL)
	FUNC6 (buf, 0, FUNC1 (FUNC3 (val)));
      else
	FUNC0 (builtin_type_void_data_ptr, buf,
			    FUNC5 (frame));
      return val;
    }
}