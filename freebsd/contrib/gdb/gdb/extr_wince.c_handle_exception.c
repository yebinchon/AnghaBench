
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {void* sig; } ;
struct target_waitstatus {TYPE_4__ value; int kind; } ;
struct TYPE_7__ {int ExceptionCode; int ExceptionAddress; } ;
struct TYPE_8__ {TYPE_1__ ExceptionRecord; scalar_t__ dwFirstChance; } ;
struct TYPE_9__ {TYPE_2__ Exception; } ;
struct TYPE_11__ {TYPE_3__ u; } ;



 int DEBUG_EXCEPT (char*) ;




 int SIGINT ;

 int TARGET_SIGNAL_ILL ;
 void* TARGET_SIGNAL_INT ;
 void* TARGET_SIGNAL_SEGV ;
 void* TARGET_SIGNAL_TRAP ;
 void* TARGET_SIGNAL_UNKNOWN ;
 int TARGET_WAITKIND_STOPPED ;
 void* check_for_step (TYPE_5__*,int ) ;
 TYPE_5__ current_event ;
 int exception_count ;
 int last_sig ;
 int printf_unfiltered (char*,int,int ) ;

__attribute__((used)) static int
handle_exception (struct target_waitstatus *ourstatus)
{





  ourstatus->kind = TARGET_WAITKIND_STOPPED;

  switch (current_event.u.Exception.ExceptionRecord.ExceptionCode)
    {
    case 132:
      DEBUG_EXCEPT (("gdb: Target exception ACCESS_VIOLATION at 0x%08x\n",
       (unsigned) current_event.u.Exception.ExceptionRecord.ExceptionAddress));
      ourstatus->value.sig = TARGET_SIGNAL_SEGV;
      break;
    case 128:
      DEBUG_EXCEPT (("gdb: Target exception STACK_OVERFLOW at 0x%08x\n",
       (unsigned) current_event.u.Exception.ExceptionRecord.ExceptionAddress));
      ourstatus->value.sig = TARGET_SIGNAL_SEGV;
      break;
    case 131:
      DEBUG_EXCEPT (("gdb: Target exception BREAKPOINT at 0x%08x\n",
       (unsigned) current_event.u.Exception.ExceptionRecord.ExceptionAddress));
      ourstatus->value.sig = TARGET_SIGNAL_TRAP;
      break;
    case 133:
      DEBUG_EXCEPT (("gdb: Target exception CONTROL_C at 0x%08x\n",
       (unsigned) current_event.u.Exception.ExceptionRecord.ExceptionAddress));
      ourstatus->value.sig = TARGET_SIGNAL_INT;

      last_sig = SIGINT;
      break;
    case 129:
      DEBUG_EXCEPT (("gdb: Target exception SINGLE_STEP at 0x%08x\n",
       (unsigned) current_event.u.Exception.ExceptionRecord.ExceptionAddress));
      ourstatus->value.sig = TARGET_SIGNAL_TRAP;
      break;
    case 130:
      DEBUG_EXCEPT (("gdb: Target exception SINGLE_ILL at 0x%08x\n",
        current_event.u.Exception.ExceptionRecord.ExceptionAddress));
      ourstatus->value.sig = check_for_step (&current_event, TARGET_SIGNAL_ILL);
      break;
    default:




      printf_unfiltered ("gdb: unknown target exception 0x%08x at 0x%08x\n",
      current_event.u.Exception.ExceptionRecord.ExceptionCode,
  current_event.u.Exception.ExceptionRecord.ExceptionAddress);
      ourstatus->value.sig = TARGET_SIGNAL_UNKNOWN;
      break;
    }
  exception_count++;
  return 1;
}
