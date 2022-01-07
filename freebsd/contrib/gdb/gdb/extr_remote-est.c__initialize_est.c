
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* to_shortname; char* to_longname; char* to_doc; int to_open; } ;


 int add_target (TYPE_1__*) ;
 int est_open ;
 TYPE_1__ est_ops ;
 int init_est_cmds () ;
 int init_monitor_ops (TYPE_1__*) ;

void
_initialize_est (void)
{
  init_est_cmds ();
  init_monitor_ops (&est_ops);

  est_ops.to_shortname = "est";
  est_ops.to_longname = "EST background debug monitor";
  est_ops.to_doc = "Debug via the EST BDM.\nSpecify the serial device it is connected to (e.g. /dev/ttya).";

  est_ops.to_open = est_open;

  add_target (&est_ops);
}
