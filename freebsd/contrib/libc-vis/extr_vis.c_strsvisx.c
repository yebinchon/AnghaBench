
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int istrsenvisx (char**,int *,char const*,size_t,int,char const*,int *) ;

int
strsvisx(char *mbdst, const char *mbsrc, size_t len, int flags, const char *mbextra)
{
 return istrsenvisx(&mbdst, ((void*)0), mbsrc, len, flags, mbextra, ((void*)0));
}
