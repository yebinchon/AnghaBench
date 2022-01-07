
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


struct TYPE_23__ {int rlayer; int * expand; TYPE_2__* method; int * enc_read_ctx; scalar_t__ read_hash; int * session; } ;
struct TYPE_22__ {unsigned char* input; size_t length; unsigned char* data; size_t orig_len; scalar_t__ off; } ;
struct TYPE_21__ {TYPE_1__* ssl3_enc; } ;
struct TYPE_20__ {int (* mac ) (TYPE_4__*,TYPE_3__*,unsigned char*,int ) ;int (* enc ) (TYPE_4__*,TYPE_3__*,int,int ) ;} ;
typedef int SSL_SESSION ;
typedef TYPE_3__ SSL3_RECORD ;
typedef TYPE_4__ SSL ;
typedef int DTLS1_BITMAP ;


 scalar_t__ CRYPTO_memcmp (unsigned char*,unsigned char*,size_t) ;
 size_t DTLS1_RT_HEADER_LENGTH ;
 int ERR_LIB_EVP ;
 int ERR_R_INTERNAL_ERROR ;
 scalar_t__ EVP_CIPHER_CTX_mode (int *) ;
 scalar_t__ EVP_CIPH_CBC_MODE ;
 int EVP_MAX_MD_SIZE ;
 int * EVP_MD_CTX_md (scalar_t__) ;
 void* EVP_MD_CTX_size (scalar_t__) ;
 unsigned char* RECORD_LAYER_get_packet (int *) ;
 TYPE_3__* RECORD_LAYER_get_rrec (int *) ;
 int RECORD_LAYER_reset_packet_length (int *) ;
 size_t SSL3_RT_MAX_COMPRESSED_LENGTH ;
 size_t SSL3_RT_MAX_ENCRYPTED_LENGTH ;
 size_t SSL3_RT_MAX_PLAIN_LENGTH ;
 int SSL_AD_BAD_RECORD_MAC ;
 int SSL_AD_DECODE_ERROR ;
 int SSL_AD_DECOMPRESSION_FAILURE ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_AD_RECORD_OVERFLOW ;
 int SSL_F_DTLS1_PROCESS_RECORD ;
 scalar_t__ SSL_READ_ETM (TYPE_4__*) ;
 int SSL_R_BAD_DECOMPRESSION ;
 int SSL_R_COMPRESSED_LENGTH_TOO_LONG ;
 int SSL_R_DATA_LENGTH_TOO_LONG ;
 int SSL_R_DECRYPTION_FAILED_OR_BAD_RECORD_MAC ;
 int SSL_R_ENCRYPTED_LENGTH_TOO_LONG ;
 int SSL_R_LENGTH_TOO_SHORT ;
 int SSLfatal (TYPE_4__*,int ,int ,int ) ;
 int dtls1_record_bitmap_update (TYPE_4__*,int *) ;
 int ossl_assert (int) ;
 scalar_t__ ossl_statem_in_error (TYPE_4__*) ;
 int printf (char*,...) ;
 int ssl3_cbc_copy_mac (unsigned char*,TYPE_3__*,size_t) ;
 int ssl3_do_uncompress (TYPE_4__*,TYPE_3__*) ;
 int stub1 (TYPE_4__*,TYPE_3__*,unsigned char*,int ) ;
 int stub2 (TYPE_4__*,TYPE_3__*,int,int ) ;
 int stub3 (TYPE_4__*,TYPE_3__*,unsigned char*,int ) ;

int dtls1_process_record(SSL *s, DTLS1_BITMAP *bitmap)
{
    int i;
    int enc_err;
    SSL_SESSION *sess;
    SSL3_RECORD *rr;
    int imac_size;
    size_t mac_size;
    unsigned char md[EVP_MAX_MD_SIZE];

    rr = RECORD_LAYER_get_rrec(&s->rlayer);
    sess = s->session;





    rr->input = &(RECORD_LAYER_get_packet(&s->rlayer)[DTLS1_RT_HEADER_LENGTH]);
    if (rr->length > SSL3_RT_MAX_ENCRYPTED_LENGTH) {
        SSLfatal(s, SSL_AD_RECORD_OVERFLOW, SSL_F_DTLS1_PROCESS_RECORD,
                 SSL_R_ENCRYPTED_LENGTH_TOO_LONG);
        return 0;
    }


    rr->data = rr->input;
    rr->orig_len = rr->length;

    if (SSL_READ_ETM(s) && s->read_hash) {
        unsigned char *mac;
        mac_size = EVP_MD_CTX_size(s->read_hash);
        if (!ossl_assert(mac_size <= EVP_MAX_MD_SIZE)) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_DTLS1_PROCESS_RECORD,
                     ERR_R_INTERNAL_ERROR);
            return 0;
        }
        if (rr->orig_len < mac_size) {
            SSLfatal(s, SSL_AD_DECODE_ERROR, SSL_F_DTLS1_PROCESS_RECORD,
                     SSL_R_LENGTH_TOO_SHORT);
            return 0;
        }
        rr->length -= mac_size;
        mac = rr->data + rr->length;
        i = s->method->ssl3_enc->mac(s, rr, md, 0 );
        if (i == 0 || CRYPTO_memcmp(md, mac, (size_t)mac_size) != 0) {
            SSLfatal(s, SSL_AD_BAD_RECORD_MAC, SSL_F_DTLS1_PROCESS_RECORD,
                   SSL_R_DECRYPTION_FAILED_OR_BAD_RECORD_MAC);
            return 0;
        }
    }

    enc_err = s->method->ssl3_enc->enc(s, rr, 1, 0);






    if (enc_err == 0) {
        if (ossl_statem_in_error(s)) {

            return 0;
        }

        rr->length = 0;
        RECORD_LAYER_reset_packet_length(&s->rlayer);
        return 0;
    }
    if ((sess != ((void*)0)) && !SSL_READ_ETM(s) &&
        (s->enc_read_ctx != ((void*)0)) && (EVP_MD_CTX_md(s->read_hash) != ((void*)0))) {

        unsigned char *mac = ((void*)0);
        unsigned char mac_tmp[EVP_MAX_MD_SIZE];


        imac_size = EVP_MD_CTX_size(s->read_hash);
        if (imac_size < 0) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_DTLS1_PROCESS_RECORD,
                     ERR_LIB_EVP);
            return 0;
        }
        mac_size = (size_t)imac_size;
        if (!ossl_assert(mac_size <= EVP_MAX_MD_SIZE)) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_DTLS1_PROCESS_RECORD,
                     ERR_R_INTERNAL_ERROR);
            return 0;
        }







        if (rr->orig_len < mac_size ||

            (EVP_CIPHER_CTX_mode(s->enc_read_ctx) == EVP_CIPH_CBC_MODE &&
             rr->orig_len < mac_size + 1)) {
            SSLfatal(s, SSL_AD_DECODE_ERROR, SSL_F_DTLS1_PROCESS_RECORD,
                     SSL_R_LENGTH_TOO_SHORT);
            return 0;
        }

        if (EVP_CIPHER_CTX_mode(s->enc_read_ctx) == EVP_CIPH_CBC_MODE) {






            mac = mac_tmp;
            if (!ssl3_cbc_copy_mac(mac_tmp, rr, mac_size)) {
                SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_DTLS1_PROCESS_RECORD,
                         ERR_R_INTERNAL_ERROR);
                return 0;
            }
            rr->length -= mac_size;
        } else {





            rr->length -= mac_size;
            mac = &rr->data[rr->length];
        }

        i = s->method->ssl3_enc->mac(s, rr, md, 0 );
        if (i == 0 || mac == ((void*)0)
            || CRYPTO_memcmp(md, mac, mac_size) != 0)
            enc_err = -1;
        if (rr->length > SSL3_RT_MAX_COMPRESSED_LENGTH + mac_size)
            enc_err = -1;
    }

    if (enc_err < 0) {

        rr->length = 0;
        RECORD_LAYER_reset_packet_length(&s->rlayer);
        return 0;
    }


    if (s->expand != ((void*)0)) {
        if (rr->length > SSL3_RT_MAX_COMPRESSED_LENGTH) {
            SSLfatal(s, SSL_AD_RECORD_OVERFLOW, SSL_F_DTLS1_PROCESS_RECORD,
                     SSL_R_COMPRESSED_LENGTH_TOO_LONG);
            return 0;
        }
        if (!ssl3_do_uncompress(s, rr)) {
            SSLfatal(s, SSL_AD_DECOMPRESSION_FAILURE,
                     SSL_F_DTLS1_PROCESS_RECORD, SSL_R_BAD_DECOMPRESSION);
            return 0;
        }
    }

    if (rr->length > SSL3_RT_MAX_PLAIN_LENGTH) {
        SSLfatal(s, SSL_AD_RECORD_OVERFLOW, SSL_F_DTLS1_PROCESS_RECORD,
                 SSL_R_DATA_LENGTH_TOO_LONG);
        return 0;
    }

    rr->off = 0;
    RECORD_LAYER_reset_packet_length(&s->rlayer);


    dtls1_record_bitmap_update(s, bitmap);

    return 1;
}
