
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtab_and_line {int dummy; } ;


 int EX_EVENT_CATCH ;
 int deprecated_selected_frame ;
 int error (char*) ;
 int fprintf_filtered (int ,char*) ;
 int gdb_stdout ;
 int print_frame_label_vars (int ,int ,int ) ;
 struct symtab_and_line* target_enable_exception_callback (int ,int) ;

__attribute__((used)) static void
catch_info (char *ignore, int from_tty)
{
  struct symtab_and_line *sal;


  sal = target_enable_exception_callback (EX_EVENT_CATCH, 1);
  if (sal)
    {



      fprintf_filtered (gdb_stdout, "Info catch not supported with this target/compiler combination.\n");




    }
  else
    {

      if (!deprecated_selected_frame)
 error ("No frame selected.");

      print_frame_label_vars (deprecated_selected_frame, 0, gdb_stdout);
    }
}
