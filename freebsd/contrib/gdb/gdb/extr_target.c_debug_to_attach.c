
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* to_attach ) (char*,int) ;} ;


 TYPE_1__ debug_target ;
 int fprintf_unfiltered (int ,char*,char*,int) ;
 int gdb_stdlog ;
 int stub1 (char*,int) ;

__attribute__((used)) static void
debug_to_attach (char *args, int from_tty)
{
  debug_target.to_attach (args, from_tty);

  fprintf_unfiltered (gdb_stdlog, "target_attach (%s, %d)\n", args, from_tty);
}
