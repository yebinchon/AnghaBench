
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_out {int dummy; } ;
struct captured_value_struct_elt_args {int err; int static_memfuncp; int name; int args; int argp; int * result_ptr; } ;


 int GDB_RC_OK ;
 int value_struct_elt (int ,int ,int ,int ,int ) ;

__attribute__((used)) static int
do_captured_value_struct_elt (struct ui_out *uiout, void *data)
{
  struct captured_value_struct_elt_args *cargs = data;
  *cargs->result_ptr = value_struct_elt (cargs->argp, cargs->args, cargs->name,
        cargs->static_memfuncp, cargs->err);
  return GDB_RC_OK;
}
