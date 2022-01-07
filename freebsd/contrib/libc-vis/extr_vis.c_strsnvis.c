
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int istrsenvisxl (char**,size_t*,char const*,int,char const*,int *) ;

int
strsnvis(char *mbdst, size_t dlen, const char *mbsrc, int flags, const char *mbextra)
{
 return istrsenvisxl(&mbdst, &dlen, mbsrc, flags, mbextra, ((void*)0));
}
