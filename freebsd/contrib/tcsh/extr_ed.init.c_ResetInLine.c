
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ AltKeyMap ;
 int Argument ;
 int CcKeyMap ;
 int CurrentKeyMap ;
 int * Cursor ;
 scalar_t__ DoingArg ;
 int F_UNASSIGNED ;
 scalar_t__ Hist_num ;
 int INBUFSIZE ;
 scalar_t__ IncMatchLen ;
 int * InputBuf ;
 int * InputLim ;
 int * LastChar ;
 int LastCmd ;
 int MacroLvl ;
 int * Mark ;
 scalar_t__ MarkIsSet ;
 scalar_t__ MetaNext ;

void
ResetInLine(int macro)
{
    Cursor = InputBuf;
    LastChar = InputBuf;
    InputLim = &InputBuf[INBUFSIZE - 2];
    Mark = InputBuf;
    MarkIsSet = 0;
    MetaNext = 0;
    CurrentKeyMap = CcKeyMap;
    AltKeyMap = 0;
    Hist_num = 0;
    DoingArg = 0;
    Argument = 1;
    LastCmd = F_UNASSIGNED;
    IncMatchLen = 0;
    if (macro)
 MacroLvl = -1;
}
