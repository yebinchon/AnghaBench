
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_NAME ;
typedef int BIO ;


 int BIO_write (int *,char*,int) ;
 int ERR_R_BUF_LIB ;
 int OPENSSL_free (char*) ;
 int X509_F_X509_NAME_PRINT ;
 char* X509_NAME_oneline (int const*,int *,int ) ;
 int X509err (int ,int ) ;
 scalar_t__ ossl_isupper (char) ;

int X509_NAME_print(BIO *bp, const X509_NAME *name, int obase)
{
    char *s, *c, *b;
    int l, i;

    l = 80 - 2 - obase;

    b = X509_NAME_oneline(name, ((void*)0), 0);
    if (!b)
        return 0;
    if (!*b) {
        OPENSSL_free(b);
        return 1;
    }
    s = b + 1;

    c = s;
    for (;;) {
        if (((*s == '/') &&
             (ossl_isupper(s[1]) && ((s[2] == '=') ||
                                (ossl_isupper(s[2]) && (s[3] == '='))
              ))) || (*s == '\0'))
        {
            i = s - c;
            if (BIO_write(bp, c, i) != i)
                goto err;
            c = s + 1;
            if (*s != '\0') {
                if (BIO_write(bp, ", ", 2) != 2)
                    goto err;
            }
            l--;
        }
        if (*s == '\0')
            break;
        s++;
        l--;
    }

    OPENSSL_free(b);
    return 1;
 err:
    X509err(X509_F_X509_NAME_PRINT, ERR_R_BUF_LIB);
    OPENSSL_free(b);
    return 0;
}
