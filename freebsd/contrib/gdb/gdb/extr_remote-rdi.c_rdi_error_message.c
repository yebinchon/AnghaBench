
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *
rdi_error_message (int err)
{
  switch (err)
    {
    case 148:
      return "no error";
    case 142:
      return "debuggee reset";
    case 137:
      return "undefined instruction";
    case 140:
      return "SWI trapped";
    case 144:
      return "prefetch abort, execution ran into unmapped memory?";
    case 156:
      return "data abort, no memory at specified address?";
    case 166:
      return "address exception, access >26bit in 26bit mode";
    case 153:
      return "IRQ, interrupt trapped";
    case 154:
      return "FIQ, fast interrupt trapped";
    case 155:
      return "a miscellaneous type of error";
    case 159:
      return "branch through location 0";
    case 145:
      return "internal error, RDI_open not called first";
    case 139:
      return "internal error, target world is broken";
    case 128:
      return "See Operator: WrongByteSex";
    case 138:
      return "See Operator: Unable to Terminate";
    case 163:
      return "bad instruction, illegal to execute this instruction";
    case 152:
      return "illegal instruction, the effect of executing it is undefined";
    case 165:
      return "internal error, tried to set SPSR of user mode";
    case 132:
      return "unknown co-processor";
    case 131:
      return "cannot execute co-processor request";
    case 164:
      return "recognizably broken co-processor request";
    case 161:
      return "internal error, bad point yype";
    case 133:
      return "internal error, unimplemented type";
    case 162:
      return "internal error, bad point size";
    case 134:
      return "internal error, unimplemented size";
    case 147:
      return "last break/watch point was used";
    case 158:
      return "breakpoint reached";
    case 129:
      return "watchpoint accessed";
    case 146:
      return "attempted to clear non-existent break/watch point";
    case 143:
      return "end of the program reached while stepping";
    case 130:
      return "you pressed Escape";
    case 157:
      return "no more break/watch points available";
    case 151:
      return "incompatible RDI levels";
    case 149:
      return "debuggee is little endian";
    case 160:
      return "debuggee is big endian";
    case 141:
      return "recoverable error in RDI initialization";
    case 150:
      return "internal error, supervisor state not accessible to monitor";
    case 135:
      return "internal error, unimplemented message";
    case 136:
      return "internal error, undefined message";
    default:
      return "undefined error message, should reset target";
    }
}
