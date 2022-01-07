
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum pt_error_code { ____Placeholder_pt_error_code } pt_error_code ;
const char *pt_errstr(enum pt_error_code errcode)
{
 switch (errcode) {
 case 130:
  return "OK";

 case 141:
  return "internal error";

 case 140:
  return "invalid argument";

 case 132:
  return "decoder out of sync";

 case 148:
  return "unknown opcode";

 case 147:
  return "unknown packet";

 case 154:
  return "unexpected packet context";

 case 143:
  return "reached end of trace stream";

 case 146:
  return "trace stream does not match query";

 case 133:
  return "out of memory";

 case 155:
  return "bad configuration";

 case 135:
  return "no ip";

 case 139:
  return "ip has been suppressed";

 case 134:
  return "no memory mapped at this address";

 case 150:
  return "unknown instruction";

 case 136:
  return "no timing information";

 case 138:
  return "no core:bus ratio";

 case 151:
  return "bad image";

 case 149:
  return "locking error";

 case 131:
  return "not supported";

 case 128:
  return "compressed return without call";

 case 145:
  return "bad compressed return";

 case 144:
  return "bad status update";

 case 137:
  return "expected tracing enabled event";

 case 142:
  return "event ignored";

 case 129:
  return "overflow";

 case 152:
  return "bad file";

 case 153:
  return "unknown cpu";
 }


 return "internal error.";
}
