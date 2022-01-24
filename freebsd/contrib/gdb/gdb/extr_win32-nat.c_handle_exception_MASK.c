#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  thread_info ;
struct TYPE_9__ {void* sig; } ;
struct target_waitstatus {TYPE_4__ value; int /*<<< orphan*/  kind; } ;
struct TYPE_6__ {int ExceptionCode; int /*<<< orphan*/  ExceptionAddress; } ;
struct TYPE_7__ {TYPE_1__ ExceptionRecord; int /*<<< orphan*/  dwFirstChance; } ;
struct TYPE_8__ {TYPE_2__ Exception; } ;
struct TYPE_10__ {TYPE_3__ u; int /*<<< orphan*/  dwThreadId; } ;
typedef  int DWORD ;

/* Variables and functions */
#define  DBG_CONTROL_BREAK 146 
#define  DBG_CONTROL_C 145 
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  EXCEPTION_ACCESS_VIOLATION 144 
#define  EXCEPTION_ARRAY_BOUNDS_EXCEEDED 143 
#define  EXCEPTION_BREAKPOINT 142 
#define  EXCEPTION_ILLEGAL_INSTRUCTION 141 
#define  EXCEPTION_NONCONTINUABLE_EXCEPTION 140 
#define  EXCEPTION_PRIV_INSTRUCTION 139 
#define  EXCEPTION_SINGLE_STEP 138 
#define  STATUS_FLOAT_DENORMAL_OPERAND 137 
#define  STATUS_FLOAT_DIVIDE_BY_ZERO 136 
#define  STATUS_FLOAT_INEXACT_RESULT 135 
#define  STATUS_FLOAT_INVALID_OPERATION 134 
#define  STATUS_FLOAT_OVERFLOW 133 
#define  STATUS_FLOAT_STACK_CHECK 132 
#define  STATUS_FLOAT_UNDERFLOW 131 
#define  STATUS_INTEGER_DIVIDE_BY_ZERO 130 
#define  STATUS_INTEGER_OVERFLOW 129 
#define  STATUS_STACK_OVERFLOW 128 
 void* TARGET_SIGNAL_FPE ; 
 void* TARGET_SIGNAL_ILL ; 
 void* TARGET_SIGNAL_INT ; 
 void* TARGET_SIGNAL_SEGV ; 
 void* TARGET_SIGNAL_TRAP ; 
 void* TARGET_SIGNAL_UNKNOWN ; 
 int /*<<< orphan*/  TARGET_WAITKIND_STOPPED ; 
 TYPE_5__ current_event ; 
 int /*<<< orphan*/  exception_count ; 
 void* last_sig ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC3 (struct target_waitstatus *ourstatus)
{
  thread_info *th;
  DWORD code = current_event.u.Exception.ExceptionRecord.ExceptionCode;

  ourstatus->kind = TARGET_WAITKIND_STOPPED;

  /* Record the context of the current thread */
  th = FUNC2 (current_event.dwThreadId, -1);

  switch (code)
    {
    case EXCEPTION_ACCESS_VIOLATION:
      FUNC0 ("EXCEPTION_ACCESS_VIOLATION");
      ourstatus->value.sig = TARGET_SIGNAL_SEGV;
      break;
    case STATUS_STACK_OVERFLOW:
      FUNC0 ("STATUS_STACK_OVERFLOW");
      ourstatus->value.sig = TARGET_SIGNAL_SEGV;
      break;
    case STATUS_FLOAT_DENORMAL_OPERAND:
      FUNC0 ("STATUS_FLOAT_DENORMAL_OPERAND");
      ourstatus->value.sig = TARGET_SIGNAL_FPE;
      break;
    case EXCEPTION_ARRAY_BOUNDS_EXCEEDED:
      FUNC0 ("EXCEPTION_ARRAY_BOUNDS_EXCEEDED");
      ourstatus->value.sig = TARGET_SIGNAL_FPE;
      break;
    case STATUS_FLOAT_INEXACT_RESULT:
      FUNC0 ("STATUS_FLOAT_INEXACT_RESULT");
      ourstatus->value.sig = TARGET_SIGNAL_FPE;
      break;
    case STATUS_FLOAT_INVALID_OPERATION:
      FUNC0 ("STATUS_FLOAT_INVALID_OPERATION");
      ourstatus->value.sig = TARGET_SIGNAL_FPE;
      break;
    case STATUS_FLOAT_OVERFLOW:
      FUNC0 ("STATUS_FLOAT_OVERFLOW");
      ourstatus->value.sig = TARGET_SIGNAL_FPE;
      break;
    case STATUS_FLOAT_STACK_CHECK:
      FUNC0 ("STATUS_FLOAT_STACK_CHECK");
      ourstatus->value.sig = TARGET_SIGNAL_FPE;
      break;
    case STATUS_FLOAT_UNDERFLOW:
      FUNC0 ("STATUS_FLOAT_UNDERFLOW");
      ourstatus->value.sig = TARGET_SIGNAL_FPE;
      break;
    case STATUS_FLOAT_DIVIDE_BY_ZERO:
      FUNC0 ("STATUS_FLOAT_DIVIDE_BY_ZERO");
      ourstatus->value.sig = TARGET_SIGNAL_FPE;
      break;
    case STATUS_INTEGER_DIVIDE_BY_ZERO:
      FUNC0 ("STATUS_INTEGER_DIVIDE_BY_ZERO");
      ourstatus->value.sig = TARGET_SIGNAL_FPE;
      break;
    case STATUS_INTEGER_OVERFLOW:
      FUNC0 ("STATUS_INTEGER_OVERFLOW");
      ourstatus->value.sig = TARGET_SIGNAL_FPE;
      break;
    case EXCEPTION_BREAKPOINT:
      FUNC0 ("EXCEPTION_BREAKPOINT");
      ourstatus->value.sig = TARGET_SIGNAL_TRAP;
      break;
    case DBG_CONTROL_C:
      FUNC0 ("DBG_CONTROL_C");
      ourstatus->value.sig = TARGET_SIGNAL_INT;
      break;
    case DBG_CONTROL_BREAK:
      FUNC0 ("DBG_CONTROL_BREAK");
      ourstatus->value.sig = TARGET_SIGNAL_INT;
      break;
    case EXCEPTION_SINGLE_STEP:
      FUNC0 ("EXCEPTION_SINGLE_STEP");
      ourstatus->value.sig = TARGET_SIGNAL_TRAP;
      break;
    case EXCEPTION_ILLEGAL_INSTRUCTION:
      FUNC0 ("EXCEPTION_ILLEGAL_INSTRUCTION");
      ourstatus->value.sig = TARGET_SIGNAL_ILL;
      break;
    case EXCEPTION_PRIV_INSTRUCTION:
      FUNC0 ("EXCEPTION_PRIV_INSTRUCTION");
      ourstatus->value.sig = TARGET_SIGNAL_ILL;
      break;
    case EXCEPTION_NONCONTINUABLE_EXCEPTION:
      FUNC0 ("EXCEPTION_NONCONTINUABLE_EXCEPTION");
      ourstatus->value.sig = TARGET_SIGNAL_ILL;
      break;
    default:
      if (current_event.u.Exception.dwFirstChance)
	return 0;
      FUNC1 ("gdb: unknown target exception 0x%08lx at 0x%08lx\n",
		    current_event.u.Exception.ExceptionRecord.ExceptionCode,
	(DWORD) current_event.u.Exception.ExceptionRecord.ExceptionAddress);
      ourstatus->value.sig = TARGET_SIGNAL_UNKNOWN;
      break;
    }
  exception_count++;
  last_sig = ourstatus->value.sig;
  return 1;
}