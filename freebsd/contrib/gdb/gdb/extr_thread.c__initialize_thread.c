
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list_element {int dummy; } ;


 int add_cmd (char*,int ,int ,char*,struct cmd_list_element**) ;
 int add_com_alias (char*,char*,int ,int) ;
 int add_info (char*,int ,char*) ;
 int add_prefix_cmd (char*,int ,int ,char*,struct cmd_list_element**,char*,int,struct cmd_list_element**) ;
 int class_run ;
 struct cmd_list_element* cmdlist ;
 int info_threads_command ;
 int thread_apply_all_command ;
 int thread_apply_command ;
 struct cmd_list_element* thread_cmd_list ;
 int thread_command ;
 int xdb_commands ;

void
_initialize_thread (void)
{
  static struct cmd_list_element *thread_apply_list = ((void*)0);

  add_info ("threads", info_threads_command,
     "IDs of currently known threads.");

  add_prefix_cmd ("thread", class_run, thread_command,
    "Use this command to switch between threads.\nThe new thread ID must be currently known.", &thread_cmd_list, "thread ", 1, &cmdlist);


  add_prefix_cmd ("apply", class_run, thread_apply_command,
    "Apply a command to a list of threads.",
    &thread_apply_list, "apply ", 1, &thread_cmd_list);

  add_cmd ("all", class_run, thread_apply_all_command,
    "Apply a command to all threads.", &thread_apply_list);

  if (!xdb_commands)
    add_com_alias ("t", "thread", class_run, 1);
}
