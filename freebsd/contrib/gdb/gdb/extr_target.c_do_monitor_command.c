
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {void (* to_rcmd ) (char*,struct ui_file*) ;} ;
struct TYPE_3__ {void (* to_rcmd ) (char*,struct ui_file*) ;} ;


 TYPE_2__ current_target ;
 TYPE_1__ debug_target ;
 void debug_to_rcmd (char*,struct ui_file*) ;
 int error (char*) ;
 int gdb_stdtarg ;
 int target_rcmd (char*,int ) ;
 scalar_t__ tcomplain ;

__attribute__((used)) static void
do_monitor_command (char *cmd,
   int from_tty)
{
  if ((current_target.to_rcmd
       == (void (*) (char *, struct ui_file *)) tcomplain)
      || (current_target.to_rcmd == debug_to_rcmd
   && (debug_target.to_rcmd
       == (void (*) (char *, struct ui_file *)) tcomplain)))
    {
      error ("\"monitor\" command not supported by this target.\n");
    }
  target_rcmd (cmd, gdb_stdtarg);
}
