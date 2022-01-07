
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_ops {int dummy; } ;


 scalar_t__ attach_flag ;
 int inferior_ptid ;
 int printf_unfiltered (char*,char*,int ) ;
 int target_pid_to_str (int ) ;

__attribute__((used)) static void
child_files_info (struct target_ops *ignore)
{
  printf_unfiltered ("\tUsing the running image of %s %s.\n",
      attach_flag ? "attached" : "child", target_pid_to_str (inferior_ptid));
}
