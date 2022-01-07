
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int os_free (char*) ;
 char* os_malloc (unsigned int const) ;
 int os_snprintf (char*,unsigned int const,char*,int) ;
 scalar_t__ os_snprintf_error (unsigned int const,int) ;

__attribute__((used)) static char * alloc_int_str(int val)
{
 const unsigned int bufsize = 20;
 char *buf;
 int res;

 buf = os_malloc(bufsize);
 if (buf == ((void*)0))
  return ((void*)0);
 res = os_snprintf(buf, bufsize, "%d", val);
 if (os_snprintf_error(bufsize, res)) {
  os_free(buf);
  buf = ((void*)0);
 }
 return buf;
}
