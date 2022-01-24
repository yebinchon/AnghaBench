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
 scalar_t__ DEPRECATED_FP_REGNUM ; 
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
  if (DEPRECATED_FP_REGNUM >= 0)
    /* NOTE: cagney/2003-04-24: Since the mere presence of "fp" in the
       register name table overrides this built-in $fp register, there
       is no real reason for this DEPRECATED_FP_REGNUM trickery here.
       An architecture wanting to implement "$fp" as alias for a raw
       register can do so by adding "fp" to register name table (mind
       you, doing this is probably a dangerous thing).  */
    return FUNC7 (DEPRECATED_FP_REGNUM, frame);
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