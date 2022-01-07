
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DSO ;


 int * DSO_load (int *,char*,int *,int) ;
 int DSO_pathbyaddr (void*,char*,int) ;
 int OPENSSL_free (char*) ;
 char* OPENSSL_malloc (int) ;

DSO *DSO_dsobyaddr(void *addr, int flags)
{
    DSO *ret = ((void*)0);
    char *filename = ((void*)0);
    int len = DSO_pathbyaddr(addr, ((void*)0), 0);

    if (len < 0)
        return ((void*)0);

    filename = OPENSSL_malloc(len);
    if (filename != ((void*)0)
            && DSO_pathbyaddr(addr, filename, len) == len)
        ret = DSO_load(((void*)0), filename, ((void*)0), flags);

    OPENSSL_free(filename);
    return ret;
}
