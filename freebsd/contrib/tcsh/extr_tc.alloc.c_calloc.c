
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int memalign_t ;


 int memset (char*,int ,size_t volatile) ;
 char* xmalloc (size_t) ;

memalign_t
calloc(size_t i, size_t j)
{

    char *cp;
    volatile size_t k;

    i *= j;
    cp = xmalloc(i);

    k = i;
    memset(cp, 0, k);

    return ((memalign_t) cp);






}
