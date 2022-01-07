
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct frame_info {int dummy; } ;


 int ADDRESS_TO_POINTER (int ,char*,int ) ;
 scalar_t__ PC_REGNUM ;
 int TYPE_LENGTH (int ) ;
 char* VALUE_CONTENTS_RAW (struct value*) ;
 int VALUE_TYPE (struct value*) ;
 struct value* allocate_value (int ) ;
 int builtin_type_void_data_ptr ;
 int get_frame_pc (struct frame_info*) ;
 int memset (char*,int ,int ) ;
 struct value* value_of_register (scalar_t__,struct frame_info*) ;

__attribute__((used)) static struct value *
value_of_builtin_frame_pc_reg (struct frame_info *frame)
{
  if (PC_REGNUM >= 0)
    return value_of_register (PC_REGNUM, frame);
  else
    {
      struct value *val = allocate_value (builtin_type_void_data_ptr);
      char *buf = VALUE_CONTENTS_RAW (val);
      if (frame == ((void*)0))
 memset (buf, 0, TYPE_LENGTH (VALUE_TYPE (val)));
      else
 ADDRESS_TO_POINTER (builtin_type_void_data_ptr, buf,
       get_frame_pc (frame));
      return val;
    }
}
