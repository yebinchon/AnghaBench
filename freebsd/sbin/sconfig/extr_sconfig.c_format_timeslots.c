
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *
format_timeslots (unsigned long s)
{
 static char buf [100];
 char *p = buf;
 int i;

 for (i=1; i<32; ++i)
  if ((s >> i) & 1) {
   int prev = (i > 1) & (s >> (i-1));
   int next = (i < 31) & (s >> (i+1));

   if (prev) {
    if (next)
     continue;
    *p++ = '-';
   } else if (p > buf)
    *p++ = ',';

   if (i >= 10)
    *p++ = '0' + i / 10;
   *p++ = '0' + i % 10;
  }
 *p = 0;
 return buf;
}
