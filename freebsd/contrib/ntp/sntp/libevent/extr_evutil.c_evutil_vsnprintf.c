
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* va_list ;
typedef size_t __SGI_LIBC_NAMESPACE_QUALIFIER ;


 int _vscprintf (char const*,char*) ;
 int _vsnprintf (char*,size_t,char const*,char*) ;
 int vsnprintf (char*,size_t,char const*,char*) ;

int
evutil_vsnprintf(char *buf, size_t buflen, const char *format, va_list ap)
{
 int r;
 if (!buflen)
  return 0;
 r = vsnprintf(buf, buflen, format, ap);

 buf[buflen-1] = '\0';
 return r;
}
