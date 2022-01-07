
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* to_shortname; char* to_longname; char* to_doc; int to_magic; int to_get_thread_local_address; int to_has_thread_control; int to_stratum; int to_pid_to_str; int to_find_new_threads; int to_thread_alive; int to_mourn_inferior; int to_post_startup_inferior; int to_create_inferior; int to_kill; int to_xfer_memory; int to_store_registers; int to_fetch_registers; int to_wait; int to_resume; int to_detach; int to_attach; } ;


 int OPS_MAGIC ;
 int tc_schedlock ;
 int thread_db_attach ;
 int thread_db_create_inferior ;
 int thread_db_detach ;
 int thread_db_fetch_registers ;
 int thread_db_find_new_threads ;
 int thread_db_get_thread_local_address ;
 int thread_db_kill ;
 int thread_db_mourn_inferior ;
 TYPE_1__ thread_db_ops ;
 int thread_db_pid_to_str ;
 int thread_db_post_startup_inferior ;
 int thread_db_resume ;
 int thread_db_store_registers ;
 int thread_db_thread_alive ;
 int thread_db_wait ;
 int thread_db_xfer_memory ;
 int thread_stratum ;

__attribute__((used)) static void
init_thread_db_ops (void)
{
  thread_db_ops.to_shortname = "multi-thread";
  thread_db_ops.to_longname = "multi-threaded child process.";
  thread_db_ops.to_doc = "Threads and pthreads support.";
  thread_db_ops.to_attach = thread_db_attach;
  thread_db_ops.to_detach = thread_db_detach;
  thread_db_ops.to_resume = thread_db_resume;
  thread_db_ops.to_wait = thread_db_wait;
  thread_db_ops.to_fetch_registers = thread_db_fetch_registers;
  thread_db_ops.to_store_registers = thread_db_store_registers;
  thread_db_ops.to_xfer_memory = thread_db_xfer_memory;
  thread_db_ops.to_kill = thread_db_kill;
  thread_db_ops.to_create_inferior = thread_db_create_inferior;
  thread_db_ops.to_post_startup_inferior = thread_db_post_startup_inferior;
  thread_db_ops.to_mourn_inferior = thread_db_mourn_inferior;
  thread_db_ops.to_thread_alive = thread_db_thread_alive;
  thread_db_ops.to_find_new_threads = thread_db_find_new_threads;
  thread_db_ops.to_pid_to_str = thread_db_pid_to_str;
  thread_db_ops.to_stratum = thread_stratum;
  thread_db_ops.to_has_thread_control = tc_schedlock;
  thread_db_ops.to_get_thread_local_address
    = thread_db_get_thread_local_address;
  thread_db_ops.to_magic = OPS_MAGIC;
}
