
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MODE_LOCAL_CHARS (int ) ;
 int TELOPT_LINEMODE ;
 int globalmode ;
 int intp () ;
 scalar_t__ kludgelinemode ;
 scalar_t__ my_want_state_is_will (int ) ;
 int sendabort () ;
 int sendbrk () ;
 int sendeof () ;
 int sendsusp () ;
 int termEofChar ;
 int termEraseChar ;
 int termFlushChar ;
 int termIntChar ;
 int termKillChar ;
 int termQuitChar ;
 int termSuspChar ;
 int xmitAO () ;
 int xmitEC () ;
 int xmitEL () ;

int
TerminalSpecialChars(int c)
{
    if (c == termIntChar) {
 intp();
 return 0;
    } else if (c == termQuitChar) {





     sendabort();
 return 0;
    } else if (c == termEofChar) {
 if (my_want_state_is_will(TELOPT_LINEMODE)) {
     sendeof();
     return 0;
 }
 return 1;
    } else if (c == termSuspChar) {
 sendsusp();
 return(0);
    } else if (c == termFlushChar) {
 xmitAO();
 return 0;
    } else if (!MODE_LOCAL_CHARS(globalmode)) {
 if (c == termKillChar) {
     xmitEL();
     return 0;
 } else if (c == termEraseChar) {
     xmitEC();
     return 0;
 }
    }
    return 1;
}
