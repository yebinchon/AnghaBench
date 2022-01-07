
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OPENSSL_free (char*) ;
 char* OPENSSL_strdup (char const*) ;

__attribute__((used)) static void freeandcopy(char **dest, const char *source)
{
    OPENSSL_free(*dest);
    *dest = ((void*)0);
    if (source != ((void*)0))
        *dest = OPENSSL_strdup(source);
}
