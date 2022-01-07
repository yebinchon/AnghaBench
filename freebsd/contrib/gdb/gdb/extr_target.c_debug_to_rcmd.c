
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ui_file {int dummy; } ;
struct TYPE_2__ {int (* to_rcmd ) (char*,struct ui_file*) ;} ;


 TYPE_1__ debug_target ;
 int fprintf_unfiltered (int ,char*,char*) ;
 int gdb_stdlog ;
 int stub1 (char*,struct ui_file*) ;

__attribute__((used)) static void
debug_to_rcmd (char *command,
        struct ui_file *outbuf)
{
  debug_target.to_rcmd (command, outbuf);
  fprintf_unfiltered (gdb_stdlog, "target_rcmd (%s, ...)\n", command);
}
