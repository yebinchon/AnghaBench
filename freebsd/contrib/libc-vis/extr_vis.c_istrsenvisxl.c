
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int istrsenvisx (char**,size_t*,char const*,int ,int,char const*,int*) ;
 int strlen (char const*) ;

__attribute__((used)) static int
istrsenvisxl(char **mbdstp, size_t *dlen, const char *mbsrc,
    int flags, const char *mbextra, int *cerr_ptr)
{
 return istrsenvisx(mbdstp, dlen, mbsrc,
     mbsrc != ((void*)0) ? strlen(mbsrc) : 0, flags, mbextra, cerr_ptr);
}
