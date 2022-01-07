
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int buf; } ;
struct TYPE_7__ {scalar_t__ cmd; TYPE_1__ str; } ;
typedef TYPE_2__ XmapVal ;
struct TYPE_8__ {int* buf; int len; } ;
typedef scalar_t__ KEYCMD ;
typedef int Char ;
typedef TYPE_3__ CStr ;


 int AltKeyMap ;
 int CcKeyMap ;
 int CurrentKeyMap ;
 scalar_t__ F_INSERT ;
 scalar_t__ F_XKEY ;
 scalar_t__ GetCmdChar (int) ;
 int GetNextChar (int*) ;
 int GetXkey (TYPE_3__*,TYPE_2__*) ;
 int MB_LEN_MAX ;
 int META ;
 scalar_t__ MetaNext ;
 int OKCMD ;
 int PushMacro (int ) ;
 int RunCommand (int ) ;
 int STRnokanji ;



 scalar_t__ _enable_mbdisp ;
 int abort () ;
 int adrof (int ) ;

__attribute__((used)) static int
GetNextCommand(KEYCMD *cmdnum, Char *ch)
{
    KEYCMD cmd = 0;
    int num;

    while (cmd == 0 || cmd == F_XKEY) {
 if ((num = GetNextChar(ch)) != 1) {
     return num;
 }
 if (MetaNext) {
     MetaNext = 0;
     *ch |= META;
 }

 cmd = GetCmdChar(*ch);
 if (cmd == F_XKEY) {
     XmapVal val;
     CStr cstr;
     cstr.buf = ch;
     cstr.len = 1;
     switch (GetXkey(&cstr, &val)) {
     case 130:
  cmd = val.cmd;
  break;
     case 128:
  PushMacro(val.str.buf);
  break;
     case 129:
  RunCommand(val.str.buf);
  break;
     default:
  abort();
  break;
     }
 }
 if (!AltKeyMap)
     CurrentKeyMap = CcKeyMap;
    }
    *cmdnum = cmd;
    return OKCMD;
}
