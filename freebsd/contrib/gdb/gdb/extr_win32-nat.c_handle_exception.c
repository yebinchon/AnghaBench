
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int thread_info ;
struct TYPE_9__ {void* sig; } ;
struct target_waitstatus {TYPE_4__ value; int kind; } ;
struct TYPE_6__ {int ExceptionCode; int ExceptionAddress; } ;
struct TYPE_7__ {TYPE_1__ ExceptionRecord; int dwFirstChance; } ;
struct TYPE_8__ {TYPE_2__ Exception; } ;
struct TYPE_10__ {TYPE_3__ u; int dwThreadId; } ;
typedef int DWORD ;




 int DEBUG_EXCEPTION_SIMPLE (char*) ;
 void* TARGET_SIGNAL_FPE ;
 void* TARGET_SIGNAL_ILL ;
 void* TARGET_SIGNAL_INT ;
 void* TARGET_SIGNAL_SEGV ;
 void* TARGET_SIGNAL_TRAP ;
 void* TARGET_SIGNAL_UNKNOWN ;
 int TARGET_WAITKIND_STOPPED ;
 TYPE_5__ current_event ;
 int exception_count ;
 void* last_sig ;
 int printf_unfiltered (char*,int,int) ;
 int * thread_rec (int ,int) ;

__attribute__((used)) static int
handle_exception (struct target_waitstatus *ourstatus)
{
  thread_info *th;
  DWORD code = current_event.u.Exception.ExceptionRecord.ExceptionCode;

  ourstatus->kind = TARGET_WAITKIND_STOPPED;


  th = thread_rec (current_event.dwThreadId, -1);

  switch (code)
    {
    case 144:
      DEBUG_EXCEPTION_SIMPLE ("EXCEPTION_ACCESS_VIOLATION");
      ourstatus->value.sig = TARGET_SIGNAL_SEGV;
      break;
    case 128:
      DEBUG_EXCEPTION_SIMPLE ("STATUS_STACK_OVERFLOW");
      ourstatus->value.sig = TARGET_SIGNAL_SEGV;
      break;
    case 137:
      DEBUG_EXCEPTION_SIMPLE ("STATUS_FLOAT_DENORMAL_OPERAND");
      ourstatus->value.sig = TARGET_SIGNAL_FPE;
      break;
    case 143:
      DEBUG_EXCEPTION_SIMPLE ("EXCEPTION_ARRAY_BOUNDS_EXCEEDED");
      ourstatus->value.sig = TARGET_SIGNAL_FPE;
      break;
    case 135:
      DEBUG_EXCEPTION_SIMPLE ("STATUS_FLOAT_INEXACT_RESULT");
      ourstatus->value.sig = TARGET_SIGNAL_FPE;
      break;
    case 134:
      DEBUG_EXCEPTION_SIMPLE ("STATUS_FLOAT_INVALID_OPERATION");
      ourstatus->value.sig = TARGET_SIGNAL_FPE;
      break;
    case 133:
      DEBUG_EXCEPTION_SIMPLE ("STATUS_FLOAT_OVERFLOW");
      ourstatus->value.sig = TARGET_SIGNAL_FPE;
      break;
    case 132:
      DEBUG_EXCEPTION_SIMPLE ("STATUS_FLOAT_STACK_CHECK");
      ourstatus->value.sig = TARGET_SIGNAL_FPE;
      break;
    case 131:
      DEBUG_EXCEPTION_SIMPLE ("STATUS_FLOAT_UNDERFLOW");
      ourstatus->value.sig = TARGET_SIGNAL_FPE;
      break;
    case 136:
      DEBUG_EXCEPTION_SIMPLE ("STATUS_FLOAT_DIVIDE_BY_ZERO");
      ourstatus->value.sig = TARGET_SIGNAL_FPE;
      break;
    case 130:
      DEBUG_EXCEPTION_SIMPLE ("STATUS_INTEGER_DIVIDE_BY_ZERO");
      ourstatus->value.sig = TARGET_SIGNAL_FPE;
      break;
    case 129:
      DEBUG_EXCEPTION_SIMPLE ("STATUS_INTEGER_OVERFLOW");
      ourstatus->value.sig = TARGET_SIGNAL_FPE;
      break;
    case 142:
      DEBUG_EXCEPTION_SIMPLE ("EXCEPTION_BREAKPOINT");
      ourstatus->value.sig = TARGET_SIGNAL_TRAP;
      break;
    case 145:
      DEBUG_EXCEPTION_SIMPLE ("DBG_CONTROL_C");
      ourstatus->value.sig = TARGET_SIGNAL_INT;
      break;
    case 146:
      DEBUG_EXCEPTION_SIMPLE ("DBG_CONTROL_BREAK");
      ourstatus->value.sig = TARGET_SIGNAL_INT;
      break;
    case 138:
      DEBUG_EXCEPTION_SIMPLE ("EXCEPTION_SINGLE_STEP");
      ourstatus->value.sig = TARGET_SIGNAL_TRAP;
      break;
    case 141:
      DEBUG_EXCEPTION_SIMPLE ("EXCEPTION_ILLEGAL_INSTRUCTION");
      ourstatus->value.sig = TARGET_SIGNAL_ILL;
      break;
    case 139:
      DEBUG_EXCEPTION_SIMPLE ("EXCEPTION_PRIV_INSTRUCTION");
      ourstatus->value.sig = TARGET_SIGNAL_ILL;
      break;
    case 140:
      DEBUG_EXCEPTION_SIMPLE ("EXCEPTION_NONCONTINUABLE_EXCEPTION");
      ourstatus->value.sig = TARGET_SIGNAL_ILL;
      break;
    default:
      if (current_event.u.Exception.dwFirstChance)
 return 0;
      printf_unfiltered ("gdb: unknown target exception 0x%08lx at 0x%08lx\n",
      current_event.u.Exception.ExceptionRecord.ExceptionCode,
 (DWORD) current_event.u.Exception.ExceptionRecord.ExceptionAddress);
      ourstatus->value.sig = TARGET_SIGNAL_UNKNOWN;
      break;
    }
  exception_count++;
  last_sig = ourstatus->value.sig;
  return 1;
}
