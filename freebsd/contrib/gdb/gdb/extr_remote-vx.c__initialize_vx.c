
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tv_sec; } ;


 int add_set_cmd (char*,int ,int ,char*,char*,int *) ;
 int add_show_from_set (int ,int *) ;
 int add_target (int *) ;
 int class_support ;
 int init_vx_ops () ;
 int init_vx_run_ops () ;
 TYPE_1__ rpcTimeout ;
 int setlist ;
 int showlist ;
 int var_uinteger ;
 int vx_ops ;
 int vx_run_ops ;

void
_initialize_vx (void)
{
  init_vx_ops ();
  add_target (&vx_ops);
  init_vx_run_ops ();
  add_target (&vx_run_ops);

  add_show_from_set
    (add_set_cmd ("vxworks-timeout", class_support, var_uinteger,
    (char *) &rpcTimeout.tv_sec,
    "Set seconds to wait for rpc calls to return.\nSet the number of seconds to wait for rpc calls to return.", &setlist),

     &showlist);
}
