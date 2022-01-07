
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct thread_info {int dummy; } ;
typedef int ps_err_e ;
typedef int lwpid_t ;
typedef int gdb_ps_prochandle_t ;
typedef int gdb_prfpregset_t ;
struct TYPE_4__ {int (* fill_function ) (int *,void*) ;} ;
struct TYPE_3__ {int (* fetch_registers ) (int ,void*) ;} ;


 int PS_ERR ;
 int PS_OK ;
 int all_threads ;
 struct thread_info* current_inferior ;
 scalar_t__ find_inferior_id (int *,int ) ;
 TYPE_2__* fpregset_info () ;
 int free_register_cache (void*) ;
 void* new_register_cache () ;
 int stub1 (int ,void*) ;
 int stub2 (int *,void*) ;
 TYPE_1__* the_target ;

ps_err_e
ps_lgetfpregs (gdb_ps_prochandle_t ph, lwpid_t lwpid,
        gdb_prfpregset_t *fpregset)
{
  return PS_ERR;
}
