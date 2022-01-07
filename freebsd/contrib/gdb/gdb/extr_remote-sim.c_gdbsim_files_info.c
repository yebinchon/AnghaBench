
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_ops {int dummy; } ;


 char* bfd_get_filename (scalar_t__) ;
 scalar_t__ exec_bfd ;
 int gdbsim_desc ;
 int printf_filtered (char*,char*,...) ;
 int sim_info (int ,int ) ;
 scalar_t__ sr_get_debug () ;
 int target_shortname ;

__attribute__((used)) static void
gdbsim_files_info (struct target_ops *target)
{
  char *file = "nothing";

  if (exec_bfd)
    file = bfd_get_filename (exec_bfd);

  if (sr_get_debug ())
    printf_filtered ("gdbsim_files_info: file \"%s\"\n", file);

  if (exec_bfd)
    {
      printf_filtered ("\tAttached to %s running program %s\n",
         target_shortname, file);
      sim_info (gdbsim_desc, 0);
    }
}
