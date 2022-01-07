
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int s1 ;


 int FI ;
 int snprintf (char*,int,char*,double) ;

__attribute__((used)) static void
doublefreq(
 double freq,
 u_char *x,
 int len
 )
{
 int i;
 char s1[16];
 char *y;

 snprintf(s1, sizeof(s1), " %10.0f", freq);
 y = s1 + 10;
 i = 0;
 while (*y != ' ') {
  x[i] = *y-- & 0x0f;
  x[i] = x[i] | ((*y-- & 0x0f) << 4);
  i++;
 }
 for ( ; i < len; i++)
  x[i] = 0;
 x[i] = FI;
}
