
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NP ;
 scalar_t__ OBUFSIZ ;
 scalar_t__ OP ;
 int STDOUT_FILENO ;
 int UB ;
 scalar_t__ obufcnt ;
 int oflush () ;
 char* outbuf ;
 int* partab ;
 int write (int ,char*,int) ;

__attribute__((used)) static void
putchr(int cc)
{
 char c;

 c = cc;
 if (!NP) {
  c |= partab[c&0177] & 0200;
  if (OP)
   c ^= 0200;
 }
 if (!UB) {
  outbuf[obufcnt++] = c;
  if (obufcnt >= OBUFSIZ)
   oflush();
 } else
  write(STDOUT_FILENO, &c, 1);
}
