
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 char* malloc (int) ;
 int wcstombs (char*,int const*,int) ;

const char *
my_wcstombs(const wchar_t *wstr)
{
 static struct {
  char *str;
  int len;
 } buf;

 int needed = wcstombs(0, wstr, 0) + 1;
 if (needed > buf.len) {
  buf.str = malloc(needed);
  buf.len = needed;
 }
 wcstombs(buf.str, wstr, needed);
 buf.str[needed - 1] = 0;

 return buf.str;
}
