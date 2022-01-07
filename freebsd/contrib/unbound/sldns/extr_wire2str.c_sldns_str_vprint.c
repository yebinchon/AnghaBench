
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int vsnprintf (char*,size_t,char const*,int ) ;

int sldns_str_vprint(char** str, size_t* slen, const char* format, va_list args)
{
 int w = vsnprintf(*str, *slen, format, args);
 if(w < 0) {

  return 0;
 } else if((size_t)w >= *slen) {
  *str = ((void*)0);
  *slen = 0;
 } else {
  *str += w;
  *slen -= w;
 }
 return w;
}
