
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int * confunc_f ;
typedef int WPACKET ;
struct TYPE_7__ {int hand_state; } ;
struct TYPE_6__ {TYPE_2__ statem; } ;
typedef TYPE_1__ SSL ;
typedef TYPE_2__ OSSL_STATEM ;


 int SSL3_MT_CERTIFICATE ;
 int SSL3_MT_CERTIFICATE_VERIFY ;
 int SSL3_MT_CHANGE_CIPHER_SPEC ;
 int SSL3_MT_CLIENT_HELLO ;
 int SSL3_MT_CLIENT_KEY_EXCHANGE ;
 int SSL3_MT_DUMMY ;
 int SSL3_MT_END_OF_EARLY_DATA ;
 int SSL3_MT_FINISHED ;
 int SSL3_MT_KEY_UPDATE ;
 int SSL3_MT_NEXT_PROTO ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_OSSL_STATEM_CLIENT_CONSTRUCT_MESSAGE ;
 int SSL_IS_DTLS (TYPE_1__*) ;
 int SSL_R_BAD_HANDSHAKE_STATE ;
 int SSLfatal (TYPE_1__*,int ,int ,int ) ;
 int * dtls_construct_change_cipher_spec ;
 int * tls_construct_cert_verify ;
 int * tls_construct_change_cipher_spec ;
 int * tls_construct_client_certificate ;
 int * tls_construct_client_hello ;
 int * tls_construct_client_key_exchange ;
 int * tls_construct_end_of_early_data ;
 int * tls_construct_finished ;
 int * tls_construct_key_update ;
 int * tls_construct_next_proto ;

int ossl_statem_client_construct_message(SSL *s, WPACKET *pkt,
                                         confunc_f *confunc, int *mt)
{
    OSSL_STATEM *st = &s->statem;

    switch (st->hand_state) {
    default:

        SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_OSSL_STATEM_CLIENT_CONSTRUCT_MESSAGE,
                 SSL_R_BAD_HANDSHAKE_STATE);
        return 0;

    case 135:
        if (SSL_IS_DTLS(s))
            *confunc = dtls_construct_change_cipher_spec;
        else
            *confunc = tls_construct_change_cipher_spec;
        *mt = SSL3_MT_CHANGE_CIPHER_SPEC;
        break;

    case 134:
        *confunc = tls_construct_client_hello;
        *mt = SSL3_MT_CLIENT_HELLO;
        break;

    case 133:
        *confunc = tls_construct_end_of_early_data;
        *mt = SSL3_MT_END_OF_EARLY_DATA;
        break;

    case 128:
        *confunc = ((void*)0);
        *mt = SSL3_MT_DUMMY;
        break;

    case 137:
        *confunc = tls_construct_client_certificate;
        *mt = SSL3_MT_CERTIFICATE;
        break;

    case 131:
        *confunc = tls_construct_client_key_exchange;
        *mt = SSL3_MT_CLIENT_KEY_EXCHANGE;
        break;

    case 136:
        *confunc = tls_construct_cert_verify;
        *mt = SSL3_MT_CERTIFICATE_VERIFY;
        break;


    case 129:
        *confunc = tls_construct_next_proto;
        *mt = SSL3_MT_NEXT_PROTO;
        break;

    case 132:
        *confunc = tls_construct_finished;
        *mt = SSL3_MT_FINISHED;
        break;

    case 130:
        *confunc = tls_construct_key_update;
        *mt = SSL3_MT_KEY_UPDATE;
        break;
    }

    return 1;
}
