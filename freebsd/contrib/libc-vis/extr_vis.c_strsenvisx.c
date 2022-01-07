
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int istrsenvisx (char**,size_t*,char const*,size_t,int,char const*,int*) ;

int
strsenvisx(char *mbdst, size_t dlen, const char *mbsrc, size_t len, int flags,
    const char *mbextra, int *cerr_ptr)
{
 return istrsenvisx(&mbdst, &dlen, mbsrc, len, flags, mbextra, cerr_ptr);
}
