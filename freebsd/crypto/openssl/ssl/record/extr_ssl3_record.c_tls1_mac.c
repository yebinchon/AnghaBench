
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int header ;
struct TYPE_10__ {int mac_flags; int version; TYPE_1__* s3; int enc_read_ctx; int rlayer; int * read_hash; int * write_hash; } ;
struct TYPE_9__ {unsigned char type; int length; unsigned char* input; int* data; int orig_len; } ;
struct TYPE_8__ {int read_mac_secret_size; int read_mac_secret; } ;
typedef TYPE_2__ SSL3_RECORD ;
typedef TYPE_3__ SSL ;
typedef int EVP_MD_CTX ;


 int DTLS_RECORD_LAYER_get_r_epoch (int *) ;
 int DTLS_RECORD_LAYER_get_w_epoch (int *) ;
 scalar_t__ EVP_CIPHER_CTX_mode (int ) ;
 scalar_t__ EVP_CIPH_CBC_MODE ;
 scalar_t__ EVP_DigestSignFinal (int *,unsigned char*,size_t*) ;
 scalar_t__ EVP_DigestSignUpdate (int *,unsigned char*,int) ;
 int EVP_MD_CTX_copy (int *,int *) ;
 int EVP_MD_CTX_free (int *) ;
 int * EVP_MD_CTX_new () ;
 int EVP_MD_CTX_size (int *) ;
 unsigned char* RECORD_LAYER_get_read_sequence (int *) ;
 unsigned char* RECORD_LAYER_get_write_sequence (int *) ;
 scalar_t__ SSL_IS_DTLS (TYPE_3__*) ;
 int SSL_MAC_FLAG_READ_MAC_STREAM ;
 int SSL_MAC_FLAG_WRITE_MAC_STREAM ;
 int SSL_READ_ETM (TYPE_3__*) ;
 int fprintf (int ,char*,...) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int ossl_assert (int) ;
 int s2n (int ,unsigned char*) ;
 scalar_t__ ssl3_cbc_digest_record (int *,unsigned char*,size_t*,unsigned char*,unsigned char*,size_t,int ,int ,int ,int ) ;
 scalar_t__ ssl3_cbc_record_digest_supported (int *) ;
 int stderr ;

int tls1_mac(SSL *ssl, SSL3_RECORD *rec, unsigned char *md, int sending)
{
    unsigned char *seq;
    EVP_MD_CTX *hash;
    size_t md_size;
    int i;
    EVP_MD_CTX *hmac = ((void*)0), *mac_ctx;
    unsigned char header[13];
    int stream_mac = (sending ? (ssl->mac_flags & SSL_MAC_FLAG_WRITE_MAC_STREAM)
                      : (ssl->mac_flags & SSL_MAC_FLAG_READ_MAC_STREAM));
    int t;

    if (sending) {
        seq = RECORD_LAYER_get_write_sequence(&ssl->rlayer);
        hash = ssl->write_hash;
    } else {
        seq = RECORD_LAYER_get_read_sequence(&ssl->rlayer);
        hash = ssl->read_hash;
    }

    t = EVP_MD_CTX_size(hash);
    if (!ossl_assert(t >= 0))
        return 0;
    md_size = t;


    if (stream_mac) {
        mac_ctx = hash;
    } else {
        hmac = EVP_MD_CTX_new();
        if (hmac == ((void*)0) || !EVP_MD_CTX_copy(hmac, hash)) {
            EVP_MD_CTX_free(hmac);
            return 0;
        }
        mac_ctx = hmac;
    }

    if (SSL_IS_DTLS(ssl)) {
        unsigned char dtlsseq[8], *p = dtlsseq;

        s2n(sending ? DTLS_RECORD_LAYER_get_w_epoch(&ssl->rlayer) :
            DTLS_RECORD_LAYER_get_r_epoch(&ssl->rlayer), p);
        memcpy(p, &seq[2], 6);

        memcpy(header, dtlsseq, 8);
    } else
        memcpy(header, seq, 8);

    header[8] = rec->type;
    header[9] = (unsigned char)(ssl->version >> 8);
    header[10] = (unsigned char)(ssl->version);
    header[11] = (unsigned char)(rec->length >> 8);
    header[12] = (unsigned char)(rec->length & 0xff);

    if (!sending && !SSL_READ_ETM(ssl) &&
        EVP_CIPHER_CTX_mode(ssl->enc_read_ctx) == EVP_CIPH_CBC_MODE &&
        ssl3_cbc_record_digest_supported(mac_ctx)) {






        if (ssl3_cbc_digest_record(mac_ctx,
                                   md, &md_size,
                                   header, rec->input,
                                   rec->length + md_size, rec->orig_len,
                                   ssl->s3->read_mac_secret,
                                   ssl->s3->read_mac_secret_size, 0) <= 0) {
            EVP_MD_CTX_free(hmac);
            return 0;
        }
    } else {

        if (EVP_DigestSignUpdate(mac_ctx, header, sizeof(header)) <= 0
            || EVP_DigestSignUpdate(mac_ctx, rec->input, rec->length) <= 0
            || EVP_DigestSignFinal(mac_ctx, md, &md_size) <= 0) {
            EVP_MD_CTX_free(hmac);
            return 0;
        }
    }

    EVP_MD_CTX_free(hmac);
    if (!SSL_IS_DTLS(ssl)) {
        for (i = 7; i >= 0; i--) {
            ++seq[i];
            if (seq[i] != 0)
                break;
        }
    }
    return 1;
}
