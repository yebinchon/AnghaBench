
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MAXSIZE ;
 scalar_t__ digit (char const) ;

__attribute__((used)) static int getnum (const char **fmt, int df) {
  if (!digit(**fmt))
    return df;
  else {
    int a = 0;
    do {
      a = a*10 + (*((*fmt)++) - '0');
    } while (digit(**fmt) && a <= ((int)MAXSIZE - 9)/10);
    return a;
  }
}
