
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct frame_info {int dummy; } ;


 scalar_t__ SP_REGNUM ;
 int error (char*) ;
 struct value* value_of_register (scalar_t__,struct frame_info*) ;

__attribute__((used)) static struct value *
value_of_builtin_frame_sp_reg (struct frame_info *frame)
{




  error ("Standard register ``$sp'' is not available for this target");
}
