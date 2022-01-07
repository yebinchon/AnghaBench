
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned char* consume; } ;



 int MODE_EDIT ;
 scalar_t__ MODE_LOCAL_CHARS (int) ;
 int NET2ADD (int const,int const) ;
 int NETADD (int) ;
 int NETROOM () ;
 int TELOPT_BINARY ;
 scalar_t__ TerminalSpecialChars (int) ;
 int _POSIX_VDISABLE ;
 int bol ;
 int command (int ,...) ;
 int crlf ;
 int dontlecho ;
 int echoc ;
 int echotoggle ;
 int escape ;
 int flushline ;
 int globalmode ;
 scalar_t__ kludgelinemode ;
 int local ;
 scalar_t__ my_want_state_is_wont (int ) ;
 int ring_consumed (TYPE_1__*,int) ;
 int ring_full_consecutive (TYPE_1__*) ;
 int rlogin ;
 int setconnmode (int ) ;
 int settimer (int ) ;
 int strip (unsigned char) ;
 int termEofChar ;
 int termSuspChar ;
 TYPE_1__ ttyiring ;

__attribute__((used)) static int
telsnd(void)
{
    int tcc;
    int count;
    int returnValue = 0;
    unsigned char *tbp;

    tcc = 0;
    count = 0;
    while (NETROOM() > 2) {
 int sc;
 int c;

 if (tcc == 0) {
     if (count) {
  ring_consumed(&ttyiring, count);
  returnValue = 1;
  count = 0;
     }
     tbp = ttyiring.consume;
     tcc = ring_full_consecutive(&ttyiring);
     if (tcc == 0) {
  break;
     }
 }
 c = *tbp++ & 0xff, sc = strip(c), tcc--; count++;
 if (rlogin != _POSIX_VDISABLE) {
  if (bol) {
   bol = 0;
   if (sc == rlogin) {
    local = 1;
    continue;
   }
  } else if (local) {
   local = 0;
   if (sc == '.' || c == termEofChar) {
    bol = 1;
    command(0, "close\n", 6);
    continue;
   }
   if (sc == termSuspChar) {
    bol = 1;
    command(0, "z\n", 2);
    continue;
   }
   if (sc == escape) {
    command(0, tbp, tcc);
    bol = 1;
    count += tcc;
    tcc = 0;
    flushline = 1;
    break;
   }
   if (sc != rlogin) {
    ++tcc;
    --tbp;
    --count;
    c = sc = rlogin;
   }
  }
  if ((sc == '\n') || (sc == '\r'))
   bol = 1;
 } else if (escape != _POSIX_VDISABLE && sc == escape) {



     if (tcc && strip(*tbp) == escape) {
  tbp++;
  tcc--;
  count++;
  bol = 0;
     } else {
  command(0, (char *)tbp, tcc);
  bol = 1;
  count += tcc;
  tcc = 0;
  flushline = 1;
  break;
     }
 } else
     bol = 0;
 if (MODE_LOCAL_CHARS(globalmode)) {
     if (TerminalSpecialChars(sc) == 0) {
  bol = 1;
  break;
     }
 }
 if (my_want_state_is_wont(TELOPT_BINARY)) {
     switch (c) {
     case '\n':





  if (MODE_LOCAL_CHARS(globalmode)) {
      NETADD('\r');
  }
  NETADD('\n');
  bol = flushline = 1;
  break;
     case '\r':
  if (!crlf) {
      NET2ADD('\r', '\0');
  } else {
      NET2ADD('\r', '\n');
  }
  bol = flushline = 1;
  break;
     case 128:
  NET2ADD(128, 128);
  break;
     default:
  NETADD(c);
  break;
     }
 } else if (c == 128) {
     NET2ADD(128, 128);
 } else {
     NETADD(c);
 }
    }
    if (count)
 ring_consumed(&ttyiring, count);
    return returnValue||count;
}
