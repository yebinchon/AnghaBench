
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int istrsenvisxl (char**,int *,char const*,int,char*,int *) ;

int
stravis(char **mbdstp, const char *mbsrc, int flags)
{
 *mbdstp = ((void*)0);
 return istrsenvisxl(mbdstp, ((void*)0), mbsrc, flags, "", ((void*)0));
}
