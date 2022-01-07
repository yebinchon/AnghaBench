
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* to_shortname; char* to_longname; char* to_doc; int to_has_memory; int to_has_registers; int to_has_stack; void* to_remove_breakpoint; void* to_insert_breakpoint; int to_xfer_memory; int to_thread_alive; int to_store_registers; int to_pid_to_str; int to_find_new_threads; int to_files_info; int to_fetch_registers; int to_extra_thread_info; int to_detach; int to_attach; int to_close; int to_open; int to_stratum; int to_magic; } ;


 int OPS_MAGIC ;
 int add_com (char*,int ,int ,char*) ;
 int add_target (TYPE_1__*) ;
 int class_obscure ;
 int core_stratum ;
 int find_default_attach ;
 int kgdb_set_proc_cmd ;
 int kgdb_set_tid_cmd ;
 int kgdb_trgt_close ;
 int kgdb_trgt_detach ;
 int kgdb_trgt_extra_thread_info ;
 int kgdb_trgt_fetch_registers ;
 int kgdb_trgt_files_info ;
 int kgdb_trgt_find_new_threads ;
 void* kgdb_trgt_ignore_breakpoints ;
 int kgdb_trgt_open ;
 TYPE_1__ kgdb_trgt_ops ;
 int kgdb_trgt_pid_to_str ;
 int kgdb_trgt_store_registers ;
 int kgdb_trgt_thread_alive ;
 int kgdb_trgt_xfer_memory ;

void
initialize_kgdb_target(void)
{

 kgdb_trgt_ops.to_magic = OPS_MAGIC;
 kgdb_trgt_ops.to_shortname = "kernel";
 kgdb_trgt_ops.to_longname = "kernel core dump file";
 kgdb_trgt_ops.to_doc =
    "Use a vmcore file as a target.  Specify the filename of the vmcore file.";
 kgdb_trgt_ops.to_stratum = core_stratum;
 kgdb_trgt_ops.to_has_memory = 1;
 kgdb_trgt_ops.to_has_registers = 1;
 kgdb_trgt_ops.to_has_stack = 1;

 kgdb_trgt_ops.to_open = kgdb_trgt_open;
 kgdb_trgt_ops.to_close = kgdb_trgt_close;
 kgdb_trgt_ops.to_attach = find_default_attach;
 kgdb_trgt_ops.to_detach = kgdb_trgt_detach;
 kgdb_trgt_ops.to_extra_thread_info = kgdb_trgt_extra_thread_info;
 kgdb_trgt_ops.to_fetch_registers = kgdb_trgt_fetch_registers;
 kgdb_trgt_ops.to_files_info = kgdb_trgt_files_info;
 kgdb_trgt_ops.to_find_new_threads = kgdb_trgt_find_new_threads;
 kgdb_trgt_ops.to_pid_to_str = kgdb_trgt_pid_to_str;
 kgdb_trgt_ops.to_store_registers = kgdb_trgt_store_registers;
 kgdb_trgt_ops.to_thread_alive = kgdb_trgt_thread_alive;
 kgdb_trgt_ops.to_xfer_memory = kgdb_trgt_xfer_memory;
 kgdb_trgt_ops.to_insert_breakpoint = kgdb_trgt_ignore_breakpoints;
 kgdb_trgt_ops.to_remove_breakpoint = kgdb_trgt_ignore_breakpoints;

 add_target(&kgdb_trgt_ops);

 add_com ("proc", class_obscure, kgdb_set_proc_cmd,
    "Set current process context");
 add_com ("tid", class_obscure, kgdb_set_tid_cmd,
    "Set current thread context");
}
