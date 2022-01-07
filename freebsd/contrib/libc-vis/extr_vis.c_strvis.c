
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int istrsenvisxl (char**,int *,char const*,int,char*,int *) ;

int
strvis(char *mbdst, const char *mbsrc, int flags)
{
 return istrsenvisxl(&mbdst, ((void*)0), mbsrc, flags, "", ((void*)0));
}
