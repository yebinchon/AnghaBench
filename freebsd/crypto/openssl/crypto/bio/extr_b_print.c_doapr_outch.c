
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIO_F_DOAPR_OUTCH ;
 int BIOerr (int ,int ) ;
 size_t BUFFER_INC ;
 int ERR_R_MALLOC_FAILURE ;
 size_t INT_MAX ;
 char* OPENSSL_malloc (size_t) ;
 char* OPENSSL_realloc (char*,size_t) ;
 int memcpy (char*,char*,size_t) ;
 int ossl_assert (int) ;

__attribute__((used)) static int
doapr_outch(char **sbuffer,
            char **buffer, size_t *currlen, size_t *maxlen, int c)
{

    if (!ossl_assert(*sbuffer != ((void*)0) || buffer != ((void*)0)))
        return 0;


    if (!ossl_assert(*currlen <= *maxlen))
        return 0;

    if (buffer && *currlen == *maxlen) {
        if (*maxlen > INT_MAX - BUFFER_INC)
            return 0;

        *maxlen += BUFFER_INC;
        if (*buffer == ((void*)0)) {
            if ((*buffer = OPENSSL_malloc(*maxlen)) == ((void*)0)) {
                BIOerr(BIO_F_DOAPR_OUTCH, ERR_R_MALLOC_FAILURE);
                return 0;
            }
            if (*currlen > 0) {
                if (!ossl_assert(*sbuffer != ((void*)0)))
                    return 0;
                memcpy(*buffer, *sbuffer, *currlen);
            }
            *sbuffer = ((void*)0);
        } else {
            char *tmpbuf;
            tmpbuf = OPENSSL_realloc(*buffer, *maxlen);
            if (tmpbuf == ((void*)0))
                return 0;
            *buffer = tmpbuf;
        }
    }

    if (*currlen < *maxlen) {
        if (*sbuffer)
            (*sbuffer)[(*currlen)++] = (char)c;
        else
            (*buffer)[(*currlen)++] = (char)c;
    }

    return 1;
}
