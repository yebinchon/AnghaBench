
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* to_shortname; char* to_longname; char* to_doc; int to_open; } ;


 int add_target (TYPE_1__*) ;
 int hms_open ;
 TYPE_1__ hms_ops ;
 int init_hms_cmds () ;
 int init_monitor_ops (TYPE_1__*) ;
 int write_dos_tick_delay ;

void
_initialize_remote_hms (void)
{
  init_hms_cmds ();
  init_monitor_ops (&hms_ops);

  hms_ops.to_shortname = "hms";
  hms_ops.to_longname = "Renesas Microsystems H8/300 debug monitor";
  hms_ops.to_doc = "Debug via the HMS monitor.\nSpecify the serial device it is connected to (e.g. /dev/ttya).";

  hms_ops.to_open = hms_open;

  write_dos_tick_delay = 1;
  add_target (&hms_ops);
}
