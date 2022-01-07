
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TYPE_CODE_STRUCT ;
 int append_composite_type_field (int *,char*,int ) ;
 int * builtin_type_frame_reg ;
 int builtin_type_void_data_ptr ;
 int * init_composite_type (char*,int ) ;

__attribute__((used)) static void
build_builtin_type_frame_reg (void)
{

  if (builtin_type_frame_reg == ((void*)0))
    {






      builtin_type_frame_reg = init_composite_type ("frame", TYPE_CODE_STRUCT);
      append_composite_type_field (builtin_type_frame_reg, "base",
       builtin_type_void_data_ptr);
    }
}
