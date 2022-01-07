
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_ops {int to_shortname; } ;


 int baud_rate ;
 int bfd_get_filename (scalar_t__) ;
 scalar_t__ exec_bfd ;
 int printf_filtered (char*,...) ;
 int sr_get_device () ;

void
gr_files_info (struct target_ops *ops)
{



  printf_filtered ("\tAttached to %s", sr_get_device ());
  if (baud_rate != -1)
    printf_filtered ("at %d baud", baud_rate);
  printf_filtered ("\n");


  if (exec_bfd)
    {
      printf_filtered ("\tand running program %s\n",
         bfd_get_filename (exec_bfd));
    }
  printf_filtered ("\tusing the %s protocol.\n", ops->to_shortname);
}
