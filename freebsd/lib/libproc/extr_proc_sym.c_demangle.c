
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* __cxa_demangle (char const*,int *,int *,int *) ;
 int free (char*) ;
 int strlcpy (char*,char const*,size_t) ;

__attribute__((used)) static void
demangle(const char *symbol, char *buf, size_t len)
{

 char *dembuf;

 if (symbol[0] == '_' && symbol[1] == 'Z' && symbol[2]) {
  dembuf = __cxa_demangle(symbol, ((void*)0), ((void*)0), ((void*)0));
  if (!dembuf)
   goto fail;
  strlcpy(buf, dembuf, len);
  free(dembuf);
  return;
 }
fail:

 strlcpy(buf, symbol, len);
}
