
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int _vsnprintf (char*,size_t,char const*,int ) ;
 int vsnprintf (char*,size_t,char const*,int ) ;

__attribute__((used)) static int
event_vsnprintf(char *str, size_t size, const char *format, va_list args)
{
 int r;
 if (size == 0)
  return -1;



 r = vsnprintf(str, size, format, args);

 str[size-1] = '\0';
 if (r < 0 || ((size_t)r) >= size) {


  return -1;
 }
 return r;
}
