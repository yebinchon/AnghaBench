
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERR_R_MALLOC_FAILURE ;
 int KDF_F_PKEY_SCRYPT_SET_MEMBUF ;
 int KDFerr (int ,int ) ;
 int OPENSSL_clear_free (unsigned char*,size_t) ;
 unsigned char* OPENSSL_malloc (int) ;
 unsigned char* OPENSSL_memdup (unsigned char const*,int const) ;

__attribute__((used)) static int pkey_scrypt_set_membuf(unsigned char **buffer, size_t *buflen,
                                  const unsigned char *new_buffer,
                                  const int new_buflen)
{
    if (new_buffer == ((void*)0))
        return 1;

    if (new_buflen < 0)
        return 0;

    if (*buffer != ((void*)0))
        OPENSSL_clear_free(*buffer, *buflen);

    if (new_buflen > 0) {
        *buffer = OPENSSL_memdup(new_buffer, new_buflen);
    } else {
        *buffer = OPENSSL_malloc(1);
    }
    if (*buffer == ((void*)0)) {
        KDFerr(KDF_F_PKEY_SCRYPT_SET_MEMBUF, ERR_R_MALLOC_FAILURE);
        return 0;
    }

    *buflen = new_buflen;
    return 1;
}
