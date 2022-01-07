
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cc_t ;
 int termAytChar ;
 int termEofChar ;
 int termEraseChar ;
 int termFlushChar ;
 int termForw1Char ;
 int termForw2Char ;
 int termIntChar ;
 int termKillChar ;
 int termLiteralNextChar ;
 int termQuitChar ;
 int termRprntChar ;
 int termStartChar ;
 int termStopChar ;
 int termSuspChar ;
 int termWerasChar ;

cc_t*
tcval(int func)
{
    switch(func) {
    case 134: return(&termIntChar);
    case 145: return(&termQuitChar);
    case 139: return(&termEofChar);
    case 141: return(&termEraseChar);
    case 140: return(&termKillChar);
    case 128: return(&termStartChar);
    case 129: return(&termStopChar);
    case 136: return(&termForw1Char);
    case 135: return(&termForw2Char);
    case 130:
    case 142:
    case 138:
    default:
 return((cc_t *)0);
    }
}
