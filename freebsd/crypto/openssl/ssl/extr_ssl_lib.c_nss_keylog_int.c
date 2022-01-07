
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {TYPE_1__* ctx; } ;
struct TYPE_6__ {int (* keylog_callback ) (TYPE_2__*,char const*) ;} ;
typedef TYPE_2__ SSL ;


 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_clear_free (char*,size_t) ;
 char* OPENSSL_malloc (size_t) ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_NSS_KEYLOG_INT ;
 int SSLfatal (TYPE_2__*,int ,int ,int ) ;
 int sprintf (char*,char*,int const) ;
 int strcpy (char*,char const*) ;
 size_t strlen (char const*) ;
 int stub1 (TYPE_2__*,char const*) ;

__attribute__((used)) static int nss_keylog_int(const char *prefix,
                          SSL *ssl,
                          const uint8_t *parameter_1,
                          size_t parameter_1_len,
                          const uint8_t *parameter_2,
                          size_t parameter_2_len)
{
    char *out = ((void*)0);
    char *cursor = ((void*)0);
    size_t out_len = 0;
    size_t i;
    size_t prefix_len;

    if (ssl->ctx->keylog_callback == ((void*)0))
        return 1;
    prefix_len = strlen(prefix);
    out_len = prefix_len + (2 * parameter_1_len) + (2 * parameter_2_len) + 3;
    if ((out = cursor = OPENSSL_malloc(out_len)) == ((void*)0)) {
        SSLfatal(ssl, SSL_AD_INTERNAL_ERROR, SSL_F_NSS_KEYLOG_INT,
                 ERR_R_MALLOC_FAILURE);
        return 0;
    }

    strcpy(cursor, prefix);
    cursor += prefix_len;
    *cursor++ = ' ';

    for (i = 0; i < parameter_1_len; i++) {
        sprintf(cursor, "%02x", parameter_1[i]);
        cursor += 2;
    }
    *cursor++ = ' ';

    for (i = 0; i < parameter_2_len; i++) {
        sprintf(cursor, "%02x", parameter_2[i]);
        cursor += 2;
    }
    *cursor = '\0';

    ssl->ctx->keylog_callback(ssl, (const char *)out);
    OPENSSL_clear_free(out, out_len);
    return 1;

}
