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
struct gdbarch {int dummy; } ;
typedef  enum return_value_convention { ____Placeholder_return_value_convention } return_value_convention ;

/* Variables and functions */
 int RETURN_VALUE_REGISTER_CONVENTION ; 
 int RETURN_VALUE_STRUCT_CONVENTION ; 
 int FUNC0 (struct type*) ; 
#define  TYPE_CODE_ARRAY 130 
#define  TYPE_CODE_STRUCT 129 
#define  TYPE_CODE_UNION 128 
 int FUNC1 (struct type*) ; 

__attribute__((used)) static enum return_value_convention
FUNC2 (struct gdbarch *gdbarch, struct type *type)
{
  int length = FUNC1 (type);
  if (length > 8)
    return RETURN_VALUE_STRUCT_CONVENTION;

  switch (FUNC0 (type))
    {
    case TYPE_CODE_STRUCT:
    case TYPE_CODE_UNION:
    case TYPE_CODE_ARRAY:
      return RETURN_VALUE_STRUCT_CONVENTION;

    default:
      return RETURN_VALUE_REGISTER_CONVENTION;
    }
}