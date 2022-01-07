
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_39__ TYPE_7__ ;
typedef struct TYPE_38__ TYPE_6__ ;
typedef struct TYPE_37__ TYPE_5__ ;
typedef struct TYPE_36__ TYPE_4__ ;
typedef struct TYPE_35__ TYPE_3__ ;
typedef struct TYPE_34__ TYPE_2__ ;
typedef struct TYPE_33__ TYPE_1__ ;


struct TYPE_37__ {size_t wpend_tot; unsigned char const* wpend_buf; int wpend_type; size_t wpend_ret; int * write_sequence; TYPE_4__* d; int * wbuf; } ;
struct TYPE_39__ {scalar_t__ max_proto_version; int version; TYPE_5__ rlayer; int msg_callback_arg; int (* msg_callback ) (int,int ,int ,unsigned char*,int,TYPE_7__*,int ) ;TYPE_3__* method; int * compress; int * enc_write_ctx; int write_hash; int * session; TYPE_1__* s3; } ;
struct TYPE_38__ {size_t length; } ;
struct TYPE_36__ {size_t w_epoch; } ;
struct TYPE_35__ {int (* ssl_dispatch_alert ) (TYPE_7__*) ;scalar_t__ version; TYPE_2__* ssl3_enc; } ;
struct TYPE_34__ {int (* enc ) (TYPE_7__*,TYPE_6__*,int,int) ;int (* mac ) (TYPE_7__*,TYPE_6__*,unsigned char*,int) ;} ;
struct TYPE_33__ {scalar_t__ alert_dispatch; } ;
typedef int SSL_SESSION ;
typedef TYPE_6__ SSL3_RECORD ;
typedef int SSL3_BUFFER ;
typedef TYPE_7__ SSL ;


 scalar_t__ DTLS1_BAD_VER ;
 int DTLS1_RT_HEADER_LENGTH ;
 int DTLS1_VERSION ;
 scalar_t__ DTLS_ANY_VERSION ;
 int ERR_R_INTERNAL_ERROR ;
 int EVP_CCM_TLS_EXPLICIT_IV_LEN ;
 int EVP_CIPHER_CTX_iv_length (int *) ;
 int EVP_CIPHER_CTX_mode (int *) ;
 int EVP_CIPH_CBC_MODE ;
 int EVP_CIPH_CCM_MODE ;
 int EVP_CIPH_GCM_MODE ;
 int EVP_GCM_TLS_EXPLICIT_IV_LEN ;
 int * EVP_MD_CTX_md (int ) ;
 int EVP_MD_CTX_size (int ) ;
 unsigned char* SSL3_BUFFER_get_buf (int *) ;
 scalar_t__ SSL3_BUFFER_get_left (int *) ;
 int SSL3_BUFFER_set_left (int *,size_t) ;
 int SSL3_BUFFER_set_offset (int *,int ) ;
 int SSL3_RECORD_add_length (TYPE_6__*,int) ;
 unsigned char* SSL3_RECORD_get_data (TYPE_6__*) ;
 int * SSL3_RECORD_get_input (TYPE_6__*) ;
 size_t SSL3_RECORD_get_length (TYPE_6__*) ;
 int SSL3_RECORD_reset_input (TYPE_6__*) ;
 int SSL3_RECORD_set_data (TYPE_6__*,unsigned char*) ;
 int SSL3_RECORD_set_input (TYPE_6__*,unsigned char*) ;
 int SSL3_RECORD_set_length (TYPE_6__*,size_t) ;
 int SSL3_RECORD_set_type (TYPE_6__*,int) ;
 int SSL3_RT_HEADER ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_DO_DTLS1_WRITE ;
 int SSL_R_COMPRESSION_FAILURE ;
 int SSL_R_EXCEEDS_MAX_FRAGMENT_SIZE ;
 scalar_t__ SSL_WRITE_ETM (TYPE_7__*) ;
 int SSLfatal (TYPE_7__*,int ,int ,int ) ;
 int memcpy (unsigned char*,int *,int) ;
 int ossl_assert (int) ;
 int ossl_statem_in_error (TYPE_7__*) ;
 int s2n (size_t,unsigned char*) ;
 int ssl3_do_compress (TYPE_7__*,TYPE_6__*) ;
 int ssl3_record_sequence_update (int *) ;
 int ssl3_write_pending (TYPE_7__*,int,unsigned char const*,size_t,size_t*) ;
 size_t ssl_get_max_send_fragment (TYPE_7__*) ;
 int stub1 (TYPE_7__*) ;
 int stub2 (TYPE_7__*,TYPE_6__*,unsigned char*,int) ;
 int stub3 (TYPE_7__*,TYPE_6__*,int,int) ;
 int stub4 (TYPE_7__*,TYPE_6__*,unsigned char*,int) ;
 int stub5 (int,int ,int ,unsigned char*,int,TYPE_7__*,int ) ;

int do_dtls1_write(SSL *s, int type, const unsigned char *buf,
                   size_t len, int create_empty_fragment, size_t *written)
{
    unsigned char *p, *pseq;
    int i, mac_size, clear = 0;
    size_t prefix_len = 0;
    int eivlen;
    SSL3_RECORD wr;
    SSL3_BUFFER *wb;
    SSL_SESSION *sess;

    wb = &s->rlayer.wbuf[0];





    if (!ossl_assert(SSL3_BUFFER_get_left(wb) == 0)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_DO_DTLS1_WRITE,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }


    if (s->s3->alert_dispatch) {
        i = s->method->ssl_dispatch_alert(s);
        if (i <= 0)
            return i;

    }

    if (len == 0 && !create_empty_fragment)
        return 0;

    if (len > ssl_get_max_send_fragment(s)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_DO_DTLS1_WRITE,
                 SSL_R_EXCEEDS_MAX_FRAGMENT_SIZE);
        return 0;
    }

    sess = s->session;

    if ((sess == ((void*)0)) ||
        (s->enc_write_ctx == ((void*)0)) || (EVP_MD_CTX_md(s->write_hash) == ((void*)0)))
        clear = 1;

    if (clear)
        mac_size = 0;
    else {
        mac_size = EVP_MD_CTX_size(s->write_hash);
        if (mac_size < 0) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_DO_DTLS1_WRITE,
                     SSL_R_EXCEEDS_MAX_FRAGMENT_SIZE);
            return -1;
        }
    }

    p = SSL3_BUFFER_get_buf(wb) + prefix_len;



    *(p++) = type & 0xff;
    SSL3_RECORD_set_type(&wr, type);





    if (s->method->version == DTLS_ANY_VERSION &&
        s->max_proto_version != DTLS1_BAD_VER) {
        *(p++) = DTLS1_VERSION >> 8;
        *(p++) = DTLS1_VERSION & 0xff;
    } else {
        *(p++) = s->version >> 8;
        *(p++) = s->version & 0xff;
    }


    pseq = p;
    p += 10;


    if (s->enc_write_ctx) {
        int mode = EVP_CIPHER_CTX_mode(s->enc_write_ctx);
        if (mode == EVP_CIPH_CBC_MODE) {
            eivlen = EVP_CIPHER_CTX_iv_length(s->enc_write_ctx);
            if (eivlen <= 1)
                eivlen = 0;
        }

        else if (mode == EVP_CIPH_GCM_MODE)
            eivlen = EVP_GCM_TLS_EXPLICIT_IV_LEN;
        else if (mode == EVP_CIPH_CCM_MODE)
            eivlen = EVP_CCM_TLS_EXPLICIT_IV_LEN;
        else
            eivlen = 0;
    } else
        eivlen = 0;


    SSL3_RECORD_set_data(&wr, p + eivlen);
    SSL3_RECORD_set_length(&wr, len);
    SSL3_RECORD_set_input(&wr, (unsigned char *)buf);






    if (s->compress != ((void*)0)) {
        if (!ssl3_do_compress(s, &wr)) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_DO_DTLS1_WRITE,
                     SSL_R_COMPRESSION_FAILURE);
            return -1;
        }
    } else {
        memcpy(SSL3_RECORD_get_data(&wr), SSL3_RECORD_get_input(&wr),
               SSL3_RECORD_get_length(&wr));
        SSL3_RECORD_reset_input(&wr);
    }







    if (!SSL_WRITE_ETM(s) && mac_size != 0) {
        if (!s->method->ssl3_enc->mac(s, &wr,
                                      &(p[SSL3_RECORD_get_length(&wr) + eivlen]),
                                      1)) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_DO_DTLS1_WRITE,
                     ERR_R_INTERNAL_ERROR);
            return -1;
        }
        SSL3_RECORD_add_length(&wr, mac_size);
    }


    SSL3_RECORD_set_data(&wr, p);
    SSL3_RECORD_reset_input(&wr);

    if (eivlen)
        SSL3_RECORD_add_length(&wr, eivlen);

    if (s->method->ssl3_enc->enc(s, &wr, 1, 1) < 1) {
        if (!ossl_statem_in_error(s)) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_DO_DTLS1_WRITE,
                     ERR_R_INTERNAL_ERROR);
        }
        return -1;
    }

    if (SSL_WRITE_ETM(s) && mac_size != 0) {
        if (!s->method->ssl3_enc->mac(s, &wr,
                                      &(p[SSL3_RECORD_get_length(&wr)]), 1)) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_DO_DTLS1_WRITE,
                     ERR_R_INTERNAL_ERROR);
            return -1;
        }
        SSL3_RECORD_add_length(&wr, mac_size);
    }





    s2n(s->rlayer.d->w_epoch, pseq);

    memcpy(pseq, &(s->rlayer.write_sequence[2]), 6);
    pseq += 6;
    s2n(SSL3_RECORD_get_length(&wr), pseq);

    if (s->msg_callback)
        s->msg_callback(1, 0, SSL3_RT_HEADER, pseq - DTLS1_RT_HEADER_LENGTH,
                        DTLS1_RT_HEADER_LENGTH, s, s->msg_callback_arg);





    SSL3_RECORD_set_type(&wr, type);
    SSL3_RECORD_add_length(&wr, DTLS1_RT_HEADER_LENGTH);

    ssl3_record_sequence_update(&(s->rlayer.write_sequence[0]));

    if (create_empty_fragment) {




        *written = wr.length;
        return 1;
    }


    SSL3_BUFFER_set_left(wb, prefix_len + SSL3_RECORD_get_length(&wr));
    SSL3_BUFFER_set_offset(wb, 0);





    s->rlayer.wpend_tot = len;
    s->rlayer.wpend_buf = buf;
    s->rlayer.wpend_type = type;
    s->rlayer.wpend_ret = len;


    return ssl3_write_pending(s, type, buf, len, written);
}
