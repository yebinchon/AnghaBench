
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* to_shortname; char* to_longname; char* to_doc; int to_magic; int to_stratum; int to_extra_thread_info; int to_pid_to_str; int to_find_new_threads; int to_thread_alive; int to_can_run; int to_mourn_inferior; int to_kill; int to_create_inferior; int to_prepare_to_store; int to_store_registers; int to_fetch_registers; int to_wait; int to_resume; int to_detach; int to_attach; } ;


 int OPS_MAGIC ;
 int thread_stratum ;
 int uw_extra_thread_info ;
 int uw_thread_alive ;
 int uw_thread_attach ;
 int uw_thread_can_run ;
 int uw_thread_create_inferior ;
 int uw_thread_detach ;
 int uw_thread_fetch_registers ;
 int uw_thread_find_new_threads ;
 int uw_thread_kill ;
 int uw_thread_mourn_inferior ;
 TYPE_1__ uw_thread_ops ;
 int uw_thread_pid_to_str ;
 int uw_thread_prepare_to_store ;
 int uw_thread_resume ;
 int uw_thread_store_registers ;
 int uw_thread_wait ;

__attribute__((used)) static void
init_uw_thread_ops (void)
{
  uw_thread_ops.to_shortname = "unixware-threads";
  uw_thread_ops.to_longname = "UnixWare threads and pthread.";
  uw_thread_ops.to_doc = "UnixWare threads and pthread support.";
  uw_thread_ops.to_attach = uw_thread_attach;
  uw_thread_ops.to_detach = uw_thread_detach;
  uw_thread_ops.to_resume = uw_thread_resume;
  uw_thread_ops.to_wait = uw_thread_wait;
  uw_thread_ops.to_fetch_registers = uw_thread_fetch_registers;
  uw_thread_ops.to_store_registers = uw_thread_store_registers;
  uw_thread_ops.to_prepare_to_store = uw_thread_prepare_to_store;
  uw_thread_ops.to_create_inferior = uw_thread_create_inferior;
  uw_thread_ops.to_kill = uw_thread_kill;
  uw_thread_ops.to_mourn_inferior = uw_thread_mourn_inferior;
  uw_thread_ops.to_can_run = uw_thread_can_run;
  uw_thread_ops.to_thread_alive = uw_thread_alive;
  uw_thread_ops.to_find_new_threads = uw_thread_find_new_threads;
  uw_thread_ops.to_pid_to_str = uw_thread_pid_to_str;
  uw_thread_ops.to_extra_thread_info = uw_extra_thread_info;
  uw_thread_ops.to_stratum = thread_stratum;
  uw_thread_ops.to_magic = OPS_MAGIC;
}
