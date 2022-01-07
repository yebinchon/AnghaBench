
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int globaldiv ;
 int putchar (char) ;

void
twiddle(u_int callerdiv)
{
 static u_int callercnt, globalcnt, pos;

 callercnt++;
 if (callerdiv > 1 && (callercnt % callerdiv) != 0)
  return;

 globalcnt++;
 if (globaldiv > 1 && (globalcnt % globaldiv) != 0)
  return;

 putchar("|/-\\"[pos++ & 3]);
 putchar('\b');
}
