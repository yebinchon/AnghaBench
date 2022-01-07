
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sig; int integer; } ;
struct target_waitstatus {int kind; TYPE_1__ value; } ;
typedef int ptid_t ;
struct TYPE_4__ {int (* to_wait ) (int ,struct target_waitstatus*) ;} ;


 int PIDGET (int ) ;
 TYPE_2__ debug_target ;
 int fprintf_unfiltered (int ,char*,...) ;
 int gdb_stdlog ;
 int stub1 (int ,struct target_waitstatus*) ;
 int target_signal_to_name (int ) ;

__attribute__((used)) static ptid_t
debug_to_wait (ptid_t ptid, struct target_waitstatus *status)
{
  ptid_t retval;

  retval = debug_target.to_wait (ptid, status);

  fprintf_unfiltered (gdb_stdlog,
        "target_wait (%d, status) = %d,   ", PIDGET (ptid),
        PIDGET (retval));
  fprintf_unfiltered (gdb_stdlog, "status->kind = ");
  switch (status->kind)
    {
    case 134:
      fprintf_unfiltered (gdb_stdlog, "exited, status = %d\n",
     status->value.integer);
      break;
    case 129:
      fprintf_unfiltered (gdb_stdlog, "stopped, signal = %s\n",
     target_signal_to_name (status->value.sig));
      break;
    case 131:
      fprintf_unfiltered (gdb_stdlog, "signalled, signal = %s\n",
     target_signal_to_name (status->value.sig));
      break;
    case 132:
      fprintf_unfiltered (gdb_stdlog, "loaded\n");
      break;
    case 133:
      fprintf_unfiltered (gdb_stdlog, "forked\n");
      break;
    case 128:
      fprintf_unfiltered (gdb_stdlog, "vforked\n");
      break;
    case 135:
      fprintf_unfiltered (gdb_stdlog, "execd\n");
      break;
    case 130:
      fprintf_unfiltered (gdb_stdlog, "spurious\n");
      break;
    default:
      fprintf_unfiltered (gdb_stdlog, "unknown???\n");
      break;
    }

  return retval;
}
