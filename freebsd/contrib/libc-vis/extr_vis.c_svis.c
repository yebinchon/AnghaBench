
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int istrsenvisx (char**,int *,char*,int,int,char const*,int *) ;

char *
svis(char *mbdst, int c, int flags, int nextc, const char *mbextra)
{
 char cc[2];
 int ret;

 cc[0] = c;
 cc[1] = nextc;

 ret = istrsenvisx(&mbdst, ((void*)0), cc, 1, flags, mbextra, ((void*)0));
 if (ret < 0)
  return ((void*)0);
 return mbdst + ret;
}
