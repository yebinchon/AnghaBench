
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CTLOG_STORE ;


 char* CTLOG_FILE ;
 int CTLOG_FILE_EVP ;
 int CTLOG_STORE_load_file (int *,char const*) ;
 char* ossl_safe_getenv (int ) ;

int CTLOG_STORE_load_default_file(CTLOG_STORE *store)
{
    const char *fpath = ossl_safe_getenv(CTLOG_FILE_EVP);

    if (fpath == ((void*)0))
      fpath = CTLOG_FILE;

    return CTLOG_STORE_load_file(store, fpath);
}
