
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEPRECATED_REGISTER_GDBARCH_SWAP (int ) ;
 int builtin_type_frame_reg ;
 int user_reg_add_builtin (char*,int ) ;
 int value_of_builtin_frame_fp_reg ;
 int value_of_builtin_frame_pc_reg ;
 int value_of_builtin_frame_ps_reg ;
 int value_of_builtin_frame_reg ;
 int value_of_builtin_frame_sp_reg ;

void
_initialize_frame_reg (void)
{




  DEPRECATED_REGISTER_GDBARCH_SWAP (builtin_type_frame_reg);




  user_reg_add_builtin ("fp", value_of_builtin_frame_fp_reg);
  user_reg_add_builtin ("pc", value_of_builtin_frame_pc_reg);
  user_reg_add_builtin ("sp", value_of_builtin_frame_sp_reg);
  user_reg_add_builtin ("ps", value_of_builtin_frame_ps_reg);




  if (0)
    user_reg_add_builtin ("frame", value_of_builtin_frame_reg);
}
