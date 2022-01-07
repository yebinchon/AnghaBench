
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int istrsenvisx (char**,size_t*,char*,int,int,char*,int *) ;

char *
nvis(char *mbdst, size_t dlen, int c, int flags, int nextc)
{
 char cc[2];
 int ret;

 cc[0] = c;
 cc[1] = nextc;

 ret = istrsenvisx(&mbdst, &dlen, cc, 1, flags, "", ((void*)0));
 if (ret < 0)
  return ((void*)0);
 return mbdst + ret;
}
