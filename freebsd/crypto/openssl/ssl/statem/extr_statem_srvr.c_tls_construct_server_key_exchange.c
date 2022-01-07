
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_9__ ;
typedef struct TYPE_27__ TYPE_8__ ;
typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef int WPACKET ;
struct TYPE_28__ {int * psk_identity_hint; int * (* dh_tmp_cb ) (TYPE_7__*,int ,int) ;int * dh_tmp; scalar_t__ dh_tmp_auto; } ;
struct TYPE_27__ {scalar_t__ sig; int sigalg; } ;
struct TYPE_20__ {int * B; int * s; int * g; int * N; } ;
struct TYPE_26__ {TYPE_3__* init_buf; TYPE_6__* s3; TYPE_9__* cert; TYPE_1__ srp_ctx; } ;
struct TYPE_24__ {TYPE_2__* cert; TYPE_4__* new_cipher; int * pkey; TYPE_8__* sigalg; } ;
struct TYPE_25__ {TYPE_5__ tmp; } ;
struct TYPE_23__ {unsigned long algorithm_mkey; int algorithm_auth; } ;
struct TYPE_22__ {scalar_t__ data; } ;
struct TYPE_21__ {int * privatekey; } ;
typedef TYPE_7__ SSL ;
typedef TYPE_8__ SIGALG_LOOKUP ;
typedef int EVP_PKEY_CTX ;
typedef int EVP_PKEY ;
typedef int EVP_MD_CTX ;
typedef int EVP_MD ;
typedef int DH ;
typedef TYPE_9__ CERT ;
typedef int BIGNUM ;


 int BN_bn2bin (int const*,unsigned char*) ;
 size_t BN_num_bytes (int const*) ;
 int DH_free (int *) ;
 int DH_get0_key (int *,int const**,int *) ;
 int DH_get0_pqg (int *,int const**,int *,int const**) ;
 int ERR_R_EC_LIB ;
 int ERR_R_EVP_LIB ;
 int ERR_R_INTERNAL_ERROR ;
 int ERR_R_MALLOC_FAILURE ;
 int EVP_DigestSign (int *,unsigned char*,size_t*,unsigned char*,size_t) ;
 scalar_t__ EVP_DigestSignInit (int *,int **,int const*,int *,int *) ;
 int EVP_MD_CTX_free (int *) ;
 int * EVP_MD_CTX_new () ;
 scalar_t__ EVP_PKEY_CTX_set_rsa_padding (int *,int ) ;
 scalar_t__ EVP_PKEY_CTX_set_rsa_pss_saltlen (int *,int ) ;
 scalar_t__ EVP_PKEY_RSA_PSS ;
 int EVP_PKEY_assign_DH (int *,int *) ;
 int EVP_PKEY_free (int *) ;
 int * EVP_PKEY_get0_DH (int *) ;
 size_t EVP_PKEY_get1_tls_encodedpoint (int *,unsigned char**) ;
 int * EVP_PKEY_new () ;
 int EVP_PKEY_security_bits (int *) ;
 size_t EVP_PKEY_size (int *) ;
 int NAMED_CURVE_TYPE ;
 int OPENSSL_free (unsigned char*) ;
 size_t PSK_MAX_IDENTITY_LEN ;
 int RSA_PKCS1_PSS_PADDING ;
 int RSA_PSS_SALTLEN_DIGEST ;
 int SSL_AD_DECODE_ERROR ;
 int SSL_AD_HANDSHAKE_FAILURE ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE ;
 unsigned long SSL_PSK ;
 int SSL_R_DH_KEY_TOO_SMALL ;
 int SSL_R_MISSING_SRP_PARAM ;
 int SSL_R_MISSING_TMP_DH_KEY ;
 int SSL_R_UNKNOWN_KEY_EXCHANGE_TYPE ;
 int SSL_R_UNSUPPORTED_ELLIPTIC_CURVE ;
 int SSL_SECOP_TMP_DH ;
 scalar_t__ SSL_USE_SIGALGS (TYPE_7__*) ;
 int SSL_aNULL ;
 int SSL_aSRP ;
 unsigned long SSL_kDHE ;
 unsigned long SSL_kDHEPSK ;
 unsigned long SSL_kECDHE ;
 unsigned long SSL_kECDHEPSK ;
 unsigned long SSL_kPSK ;
 unsigned long SSL_kRSAPSK ;
 unsigned long SSL_kSRP ;
 int SSLfatal (TYPE_7__*,int ,int ,int ) ;
 int WPACKET_allocate_bytes (int *,size_t,unsigned char**) ;
 int WPACKET_close (int *) ;
 int WPACKET_get_length (int *,size_t*) ;
 int WPACKET_get_total_written (int *,size_t*) ;
 int WPACKET_put_bytes_u16 (int *,int ) ;
 int WPACKET_put_bytes_u8 (int *,int) ;
 int WPACKET_start_sub_packet_u16 (int *) ;
 int WPACKET_start_sub_packet_u8 (int *) ;
 int WPACKET_sub_allocate_bytes_u16 (int *,size_t,unsigned char**) ;
 int WPACKET_sub_memcpy_u16 (int *,int *,size_t) ;
 int WPACKET_sub_memcpy_u8 (int *,unsigned char*,size_t) ;
 int WPACKET_sub_reserve_bytes_u16 (int *,size_t,unsigned char**) ;
 size_t construct_key_exchange_tbs (TYPE_7__*,unsigned char**,scalar_t__,size_t) ;
 int memset (unsigned char*,int ,size_t) ;
 int * ssl_dh_to_pkey (int *) ;
 int * ssl_generate_pkey (int *) ;
 int * ssl_generate_pkey_group (TYPE_7__*,int) ;
 int * ssl_get_auto_dh (TYPE_7__*) ;
 int ssl_security (TYPE_7__*,int ,int ,int ,int *) ;
 size_t strlen (int *) ;
 int * stub1 (TYPE_7__*,int ,int) ;
 int tls1_lookup_md (TYPE_8__ const*,int const**) ;
 int tls1_shared_group (TYPE_7__*,int) ;

int tls_construct_server_key_exchange(SSL *s, WPACKET *pkt)
{

    EVP_PKEY *pkdh = ((void*)0);


    unsigned char *encodedPoint = ((void*)0);
    size_t encodedlen = 0;
    int curve_id = 0;

    const SIGALG_LOOKUP *lu = s->s3->tmp.sigalg;
    int i;
    unsigned long type;
    const BIGNUM *r[4];
    EVP_MD_CTX *md_ctx = EVP_MD_CTX_new();
    EVP_PKEY_CTX *pctx = ((void*)0);
    size_t paramlen, paramoffset;

    if (!WPACKET_get_total_written(pkt, &paramoffset)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE, ERR_R_INTERNAL_ERROR);
        goto err;
    }

    if (md_ctx == ((void*)0)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    type = s->s3->tmp.new_cipher->algorithm_mkey;

    r[0] = r[1] = r[2] = r[3] = ((void*)0);


    if (type & (SSL_kPSK | SSL_kRSAPSK)) {
    } else


    if (type & (SSL_kDHE | SSL_kDHEPSK)) {
        CERT *cert = s->cert;

        EVP_PKEY *pkdhp = ((void*)0);
        DH *dh;

        if (s->cert->dh_tmp_auto) {
            DH *dhp = ssl_get_auto_dh(s);
            pkdh = EVP_PKEY_new();
            if (pkdh == ((void*)0) || dhp == ((void*)0)) {
                DH_free(dhp);
                SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                         SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE,
                         ERR_R_INTERNAL_ERROR);
                goto err;
            }
            EVP_PKEY_assign_DH(pkdh, dhp);
            pkdhp = pkdh;
        } else {
            pkdhp = cert->dh_tmp;
        }
        if ((pkdhp == ((void*)0)) && (s->cert->dh_tmp_cb != ((void*)0))) {
            DH *dhp = s->cert->dh_tmp_cb(s, 0, 1024);
            pkdh = ssl_dh_to_pkey(dhp);
            if (pkdh == ((void*)0)) {
                SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                         SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE,
                         ERR_R_INTERNAL_ERROR);
                goto err;
            }
            pkdhp = pkdh;
        }
        if (pkdhp == ((void*)0)) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE,
                     SSL_R_MISSING_TMP_DH_KEY);
            goto err;
        }
        if (!ssl_security(s, SSL_SECOP_TMP_DH,
                          EVP_PKEY_security_bits(pkdhp), 0, pkdhp)) {
            SSLfatal(s, SSL_AD_HANDSHAKE_FAILURE,
                     SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE,
                     SSL_R_DH_KEY_TOO_SMALL);
            goto err;
        }
        if (s->s3->tmp.pkey != ((void*)0)) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE,
                     ERR_R_INTERNAL_ERROR);
            goto err;
        }

        s->s3->tmp.pkey = ssl_generate_pkey(pkdhp);
        if (s->s3->tmp.pkey == ((void*)0)) {

            goto err;
        }

        dh = EVP_PKEY_get0_DH(s->s3->tmp.pkey);
        if (dh == ((void*)0)) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE,
                     ERR_R_INTERNAL_ERROR);
            goto err;
        }

        EVP_PKEY_free(pkdh);
        pkdh = ((void*)0);

        DH_get0_pqg(dh, &r[0], ((void*)0), &r[1]);
        DH_get0_key(dh, &r[2], ((void*)0));
    } else


    if (type & (SSL_kECDHE | SSL_kECDHEPSK)) {

        if (s->s3->tmp.pkey != ((void*)0)) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE,
                     ERR_R_INTERNAL_ERROR);
            goto err;
        }


        curve_id = tls1_shared_group(s, -2);
        if (curve_id == 0) {
            SSLfatal(s, SSL_AD_HANDSHAKE_FAILURE,
                     SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE,
                     SSL_R_UNSUPPORTED_ELLIPTIC_CURVE);
            goto err;
        }
        s->s3->tmp.pkey = ssl_generate_pkey_group(s, curve_id);

        if (s->s3->tmp.pkey == ((void*)0)) {

            goto err;
        }


        encodedlen = EVP_PKEY_get1_tls_encodedpoint(s->s3->tmp.pkey,
                                                    &encodedPoint);
        if (encodedlen == 0) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE, ERR_R_EC_LIB);
            goto err;
        }





        r[0] = ((void*)0);
        r[1] = ((void*)0);
        r[2] = ((void*)0);
        r[3] = ((void*)0);
    } else


    if (type & SSL_kSRP) {
        if ((s->srp_ctx.N == ((void*)0)) ||
            (s->srp_ctx.g == ((void*)0)) ||
            (s->srp_ctx.s == ((void*)0)) || (s->srp_ctx.B == ((void*)0))) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE,
                     SSL_R_MISSING_SRP_PARAM);
            goto err;
        }
        r[0] = s->srp_ctx.N;
        r[1] = s->srp_ctx.g;
        r[2] = s->srp_ctx.s;
        r[3] = s->srp_ctx.B;
    } else

    {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE,
                 SSL_R_UNKNOWN_KEY_EXCHANGE_TYPE);
        goto err;
    }

    if (((s->s3->tmp.new_cipher->algorithm_auth & (SSL_aNULL | SSL_aSRP)) != 0)
        || ((s->s3->tmp.new_cipher->algorithm_mkey & SSL_PSK)) != 0) {
        lu = ((void*)0);
    } else if (lu == ((void*)0)) {
        SSLfatal(s, SSL_AD_DECODE_ERROR,
                 SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE, ERR_R_INTERNAL_ERROR);
        goto err;
    }


    if (type & SSL_PSK) {
        size_t len = (s->cert->psk_identity_hint == ((void*)0))
                        ? 0 : strlen(s->cert->psk_identity_hint);





        if (len > PSK_MAX_IDENTITY_LEN
                || !WPACKET_sub_memcpy_u16(pkt, s->cert->psk_identity_hint,
                                           len)) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE,
                     ERR_R_INTERNAL_ERROR);
            goto err;
        }
    }


    for (i = 0; i < 4 && r[i] != ((void*)0); i++) {
        unsigned char *binval;
        int res;


        if ((i == 2) && (type & SSL_kSRP)) {
            res = WPACKET_start_sub_packet_u8(pkt);
        } else

            res = WPACKET_start_sub_packet_u16(pkt);

        if (!res) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE,
                     ERR_R_INTERNAL_ERROR);
            goto err;
        }







        if ((i == 2) && (type & (SSL_kDHE | SSL_kDHEPSK))) {
            size_t len = BN_num_bytes(r[0]) - BN_num_bytes(r[2]);

            if (len > 0) {
                if (!WPACKET_allocate_bytes(pkt, len, &binval)) {
                    SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                             SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE,
                             ERR_R_INTERNAL_ERROR);
                    goto err;
                }
                memset(binval, 0, len);
            }
        }

        if (!WPACKET_allocate_bytes(pkt, BN_num_bytes(r[i]), &binval)
                || !WPACKET_close(pkt)) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE,
                     ERR_R_INTERNAL_ERROR);
            goto err;
        }

        BN_bn2bin(r[i], binval);
    }


    if (type & (SSL_kECDHE | SSL_kECDHEPSK)) {






        if (!WPACKET_put_bytes_u8(pkt, NAMED_CURVE_TYPE)
                || !WPACKET_put_bytes_u8(pkt, 0)
                || !WPACKET_put_bytes_u8(pkt, curve_id)
                || !WPACKET_sub_memcpy_u8(pkt, encodedPoint, encodedlen)) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE,
                     ERR_R_INTERNAL_ERROR);
            goto err;
        }
        OPENSSL_free(encodedPoint);
        encodedPoint = ((void*)0);
    }



    if (lu != ((void*)0)) {
        EVP_PKEY *pkey = s->s3->tmp.cert->privatekey;
        const EVP_MD *md;
        unsigned char *sigbytes1, *sigbytes2, *tbs;
        size_t siglen, tbslen;
        int rv;

        if (pkey == ((void*)0) || !tls1_lookup_md(lu, &md)) {

            SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE,
                     ERR_R_INTERNAL_ERROR);
            goto err;
        }

        if (!WPACKET_get_length(pkt, &paramlen)) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE,
                     ERR_R_INTERNAL_ERROR);
            goto err;
        }

        if (SSL_USE_SIGALGS(s) && !WPACKET_put_bytes_u16(pkt, lu->sigalg)) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE,
                     ERR_R_INTERNAL_ERROR);
            goto err;
        }






        siglen = EVP_PKEY_size(pkey);
        if (!WPACKET_sub_reserve_bytes_u16(pkt, siglen, &sigbytes1)
            || EVP_DigestSignInit(md_ctx, &pctx, md, ((void*)0), pkey) <= 0) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE,
                     ERR_R_INTERNAL_ERROR);
            goto err;
        }
        if (lu->sig == EVP_PKEY_RSA_PSS) {
            if (EVP_PKEY_CTX_set_rsa_padding(pctx, RSA_PKCS1_PSS_PADDING) <= 0
                || EVP_PKEY_CTX_set_rsa_pss_saltlen(pctx, RSA_PSS_SALTLEN_DIGEST) <= 0) {
                SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                         SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE,
                        ERR_R_EVP_LIB);
                goto err;
            }
        }
        tbslen = construct_key_exchange_tbs(s, &tbs,
                                            s->init_buf->data + paramoffset,
                                            paramlen);
        if (tbslen == 0) {

            goto err;
        }
        rv = EVP_DigestSign(md_ctx, sigbytes1, &siglen, tbs, tbslen);
        OPENSSL_free(tbs);
        if (rv <= 0 || !WPACKET_sub_allocate_bytes_u16(pkt, siglen, &sigbytes2)
            || sigbytes1 != sigbytes2) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE,
                     ERR_R_INTERNAL_ERROR);
            goto err;
        }
    }

    EVP_MD_CTX_free(md_ctx);
    return 1;
 err:

    EVP_PKEY_free(pkdh);


    OPENSSL_free(encodedPoint);

    EVP_MD_CTX_free(md_ctx);
    return 0;
}
