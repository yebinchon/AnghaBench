
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t renegotiate_count; size_t byte_count; unsigned long renegotiate_timeout; unsigned long last_time; int num_renegotiates; int * ssl; } ;
typedef int SSL ;
typedef TYPE_1__ BIO_SSL ;
typedef int BIO ;


 int BIO_RR_CONNECT ;
 int BIO_RR_SSL_X509_LOOKUP ;
 int BIO_clear_retry_flags (int *) ;
 TYPE_1__* BIO_get_data (int *) ;
 int BIO_set_retry_read (int *) ;
 int BIO_set_retry_reason (int *,int) ;
 int BIO_set_retry_special (int *) ;
 int BIO_set_retry_write (int *) ;







 int SSL_get_error (int *,int) ;
 int SSL_renegotiate (int *) ;
 int ssl_write_internal (int *,char const*,size_t,size_t*) ;
 scalar_t__ time (int *) ;

__attribute__((used)) static int ssl_write(BIO *b, const char *buf, size_t size, size_t *written)
{
    int ret, r = 0;
    int retry_reason = 0;
    SSL *ssl;
    BIO_SSL *bs;

    if (buf == ((void*)0))
        return 0;
    bs = BIO_get_data(b);
    ssl = bs->ssl;

    BIO_clear_retry_flags(b);

    ret = ssl_write_internal(ssl, buf, size, written);

    switch (SSL_get_error(ssl, ret)) {
    case 134:
        if (bs->renegotiate_count > 0) {
            bs->byte_count += *written;
            if (bs->byte_count > bs->renegotiate_count) {
                bs->byte_count = 0;
                bs->num_renegotiates++;
                SSL_renegotiate(ssl);
                r = 1;
            }
        }
        if ((bs->renegotiate_timeout > 0) && (!r)) {
            unsigned long tm;

            tm = (unsigned long)time(((void*)0));
            if (tm > bs->last_time + bs->renegotiate_timeout) {
                bs->last_time = tm;
                bs->num_renegotiates++;
                SSL_renegotiate(ssl);
            }
        }
        break;
    case 129:
        BIO_set_retry_write(b);
        break;
    case 130:
        BIO_set_retry_read(b);
        break;
    case 128:
        BIO_set_retry_special(b);
        retry_reason = BIO_RR_SSL_X509_LOOKUP;
        break;
    case 131:
        BIO_set_retry_special(b);
        retry_reason = BIO_RR_CONNECT;
    case 132:
    case 133:
    default:
        break;
    }

    BIO_set_retry_reason(b, retry_reason);

    return ret;
}
