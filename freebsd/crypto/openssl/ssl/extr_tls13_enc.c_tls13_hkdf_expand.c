
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int label_prefix ;
typedef int hkdflabel ;
typedef int WPACKET ;
typedef int SSL ;
typedef int EVP_PKEY_CTX ;
typedef int EVP_MD ;


 int ERR_R_INTERNAL_ERROR ;
 int EVP_MAX_MD_SIZE ;
 size_t EVP_MD_size (int const*) ;
 scalar_t__ EVP_PKEY_CTX_add1_hkdf_info (int *,unsigned char*,size_t) ;
 int EVP_PKEY_CTX_free (int *) ;
 scalar_t__ EVP_PKEY_CTX_hkdf_mode (int *,int ) ;
 int * EVP_PKEY_CTX_new_id (int ,int *) ;
 scalar_t__ EVP_PKEY_CTX_set1_hkdf_key (int *,unsigned char const*,size_t) ;
 scalar_t__ EVP_PKEY_CTX_set_hkdf_md (int *,int const*) ;
 int EVP_PKEY_HKDEF_MODE_EXPAND_ONLY ;
 int EVP_PKEY_HKDF ;
 scalar_t__ EVP_PKEY_derive (int *,unsigned char*,size_t*) ;
 scalar_t__ EVP_PKEY_derive_init (int *) ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_TLS13_HKDF_EXPAND ;
 int SSL_R_TLS_ILLEGAL_EXPORTER_LABEL ;
 int SSLerr (int ,int ) ;
 int SSLfatal (int *,int ,int ,int ) ;
 int TLS13_MAX_LABEL_LEN ;
 int WPACKET_cleanup (int *) ;
 int WPACKET_close (int *) ;
 int WPACKET_finish (int *) ;
 int WPACKET_get_total_written (int *,size_t*) ;
 int WPACKET_init_static_len (int *,unsigned char*,int,int ) ;
 int WPACKET_memcpy (int *,unsigned char const*,size_t) ;
 int WPACKET_put_bytes_u16 (int *,size_t) ;
 int WPACKET_start_sub_packet_u8 (int *) ;
 int WPACKET_sub_memcpy_u8 (int *,unsigned char const*,size_t) ;

int tls13_hkdf_expand(SSL *s, const EVP_MD *md, const unsigned char *secret,
                             const unsigned char *label, size_t labellen,
                             const unsigned char *data, size_t datalen,
                             unsigned char *out, size_t outlen, int fatal)
{



    static const unsigned char label_prefix[] = "tls13 ";

    EVP_PKEY_CTX *pctx = EVP_PKEY_CTX_new_id(EVP_PKEY_HKDF, ((void*)0));
    int ret;
    size_t hkdflabellen;
    size_t hashlen;





    unsigned char hkdflabel[sizeof(uint16_t) + sizeof(uint8_t) +
                            + (sizeof(label_prefix) - 1) + TLS13_MAX_LABEL_LEN
                            + 1 + EVP_MAX_MD_SIZE];
    WPACKET pkt;

    if (pctx == ((void*)0))
        return 0;

    if (labellen > TLS13_MAX_LABEL_LEN) {
        if (fatal) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS13_HKDF_EXPAND,
                     ERR_R_INTERNAL_ERROR);
        } else {




            SSLerr(SSL_F_TLS13_HKDF_EXPAND, SSL_R_TLS_ILLEGAL_EXPORTER_LABEL);
        }
        EVP_PKEY_CTX_free(pctx);
        return 0;
    }

    hashlen = EVP_MD_size(md);

    if (!WPACKET_init_static_len(&pkt, hkdflabel, sizeof(hkdflabel), 0)
            || !WPACKET_put_bytes_u16(&pkt, outlen)
            || !WPACKET_start_sub_packet_u8(&pkt)
            || !WPACKET_memcpy(&pkt, label_prefix, sizeof(label_prefix) - 1)
            || !WPACKET_memcpy(&pkt, label, labellen)
            || !WPACKET_close(&pkt)
            || !WPACKET_sub_memcpy_u8(&pkt, data, (data == ((void*)0)) ? 0 : datalen)
            || !WPACKET_get_total_written(&pkt, &hkdflabellen)
            || !WPACKET_finish(&pkt)) {
        EVP_PKEY_CTX_free(pctx);
        WPACKET_cleanup(&pkt);
        if (fatal)
            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS13_HKDF_EXPAND,
                     ERR_R_INTERNAL_ERROR);
        else
            SSLerr(SSL_F_TLS13_HKDF_EXPAND, ERR_R_INTERNAL_ERROR);
        return 0;
    }

    ret = EVP_PKEY_derive_init(pctx) <= 0
            || EVP_PKEY_CTX_hkdf_mode(pctx, EVP_PKEY_HKDEF_MODE_EXPAND_ONLY)
               <= 0
            || EVP_PKEY_CTX_set_hkdf_md(pctx, md) <= 0
            || EVP_PKEY_CTX_set1_hkdf_key(pctx, secret, hashlen) <= 0
            || EVP_PKEY_CTX_add1_hkdf_info(pctx, hkdflabel, hkdflabellen) <= 0
            || EVP_PKEY_derive(pctx, out, &outlen) <= 0;

    EVP_PKEY_CTX_free(pctx);

    if (ret != 0) {
        if (fatal)
            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS13_HKDF_EXPAND,
                     ERR_R_INTERNAL_ERROR);
        else
            SSLerr(SSL_F_TLS13_HKDF_EXPAND, ERR_R_INTERNAL_ERROR);
    }

    return ret == 0;
}
