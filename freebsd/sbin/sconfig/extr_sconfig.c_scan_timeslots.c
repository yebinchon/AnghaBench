
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long strtol (char*,char**,int) ;

__attribute__((used)) static unsigned long
scan_timeslots (char *s)
{
 char *e;
 long v;
 int i;
 unsigned long ts, lastv;

 ts = lastv = 0;
 for (;;) {
  v = strtol (s, &e, 10);
  if (e == s)
   break;
  if (*e == '-') {
   lastv = v;
   s = e+1;
   continue;
  }
  if (*e == ',')
   ++e;

  if (lastv)
   for (i=lastv; i<v; ++i)
    ts |= 1L << i;
  ts |= 1L << v;

  lastv = 0;
  s = e;
 }
 return ts;
}
