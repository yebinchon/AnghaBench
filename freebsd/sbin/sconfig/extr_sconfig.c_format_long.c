
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sflag ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static char *
format_long (unsigned long val)
{
 static char s[32];
 int l;
 l = sprintf (s, "%lu", val);
 if (l>7 && !sflag) {
  s[3] = s[2];
  s[2] = s[1];
  s[1] = '.';
  s[4] = 'e';
  sprintf (s + 5, "%02d", l-1);
 }
 return s;
}
