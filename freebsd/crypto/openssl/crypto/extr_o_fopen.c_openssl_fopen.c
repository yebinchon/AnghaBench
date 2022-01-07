
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int FILE ;
typedef scalar_t__ DWORD ;


 int CP_UTF8 ;
 int CRYPTO_F_OPENSSL_FOPEN ;
 int CRYPTOerr (int ,int ) ;
 scalar_t__ EBADF ;
 scalar_t__ ENOENT ;
 scalar_t__ ERROR_INVALID_FLAGS ;
 scalar_t__ ERROR_NO_UNICODE_TRANSLATION ;
 int ERR_R_MALLOC_FAILURE ;
 scalar_t__ GetLastError () ;
 scalar_t__ MB_ERR_INVALID_CHARS ;
 int MultiByteToWideChar (int ,scalar_t__,char const*,int,int *,int) ;
 int OPENSSL_free (char*) ;
 char* OPENSSL_malloc (int) ;
 int OSSL_NELEM (int *) ;
 int _PC_NAME_MAX ;
 int * _alloca (int) ;
 int * _wfopen (int *,int *) ;
 scalar_t__ errno ;
 int * fopen (char const*,char const*) ;
 int pathconf (char const*,int ) ;
 int strlen (char const*) ;

FILE *openssl_fopen(const char *filename, const char *mode)
{
    FILE *file = ((void*)0);
    file = fopen(filename, mode);

    return file;
}
