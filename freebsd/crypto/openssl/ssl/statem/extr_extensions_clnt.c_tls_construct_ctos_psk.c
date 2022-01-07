
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint32_t ;
typedef int X509 ;
typedef int WPACKET ;
struct TYPE_11__ {scalar_t__ ticklen; int tick_lifetime_hint; int tick; scalar_t__ tick_age_add; } ;
struct TYPE_14__ {scalar_t__ ssl_version; TYPE_2__ ext; TYPE_1__* cipher; scalar_t__ time; } ;
struct TYPE_12__ {scalar_t__ tick_identity; } ;
struct TYPE_13__ {scalar_t__ hello_retry_request; scalar_t__ psksession_id_len; TYPE_6__* psksession; TYPE_6__* session; TYPE_3__ ext; int psksession_id; } ;
struct TYPE_10__ {int algorithm2; } ;
typedef TYPE_4__ SSL ;
typedef int EXT_RETURN ;
typedef int EVP_MD ;


 int ERR_R_INTERNAL_ERROR ;
 size_t EVP_MD_size (int const*) ;
 int EXT_RETURN_FAIL ;
 int EXT_RETURN_NOT_SENT ;
 int EXT_RETURN_SENT ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_TLS_CONSTRUCT_CTOS_PSK ;
 scalar_t__ SSL_HRR_PENDING ;
 int SSL_R_BAD_PSK ;
 int SSLfatal (TYPE_4__*,int ,int ,int ) ;
 scalar_t__ TLS1_3_VERSION ;
 int TLSEXT_TYPE_psk ;
 int WPACKET_close (int *) ;
 int WPACKET_fill_lengths (int *) ;
 int WPACKET_get_curr (int *) ;
 int WPACKET_get_total_written (int *,size_t*) ;
 int WPACKET_put_bytes_u16 (int *,int ) ;
 int WPACKET_put_bytes_u32 (int *,int) ;
 int WPACKET_start_sub_packet_u16 (int *) ;
 int WPACKET_sub_allocate_bytes_u8 (int *,size_t,unsigned char**) ;
 int WPACKET_sub_memcpy_u16 (int *,int ,scalar_t__) ;
 int * ssl_handshake_md (TYPE_4__*) ;
 int * ssl_md (int ) ;
 scalar_t__ time (int *) ;
 int tls_psk_do_binder (TYPE_4__*,int const*,unsigned char*,size_t,int *,unsigned char*,TYPE_6__*,int,int) ;

EXT_RETURN tls_construct_ctos_psk(SSL *s, WPACKET *pkt, unsigned int context,
                                  X509 *x, size_t chainidx)
{

    uint32_t now, agesec, agems = 0;
    size_t reshashsize = 0, pskhashsize = 0, binderoffset, msglen;
    unsigned char *resbinder = ((void*)0), *pskbinder = ((void*)0), *msgstart = ((void*)0);
    const EVP_MD *handmd = ((void*)0), *mdres = ((void*)0), *mdpsk = ((void*)0);
    int dores = 0;

    s->ext.tick_identity = 0;
    if (s->session->ssl_version != TLS1_3_VERSION
            || (s->session->ext.ticklen == 0 && s->psksession == ((void*)0)))
        return EXT_RETURN_NOT_SENT;

    if (s->hello_retry_request == SSL_HRR_PENDING)
        handmd = ssl_handshake_md(s);

    if (s->session->ext.ticklen != 0) {

        if (s->session->cipher == ((void*)0)) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CTOS_PSK,
                     ERR_R_INTERNAL_ERROR);
            return EXT_RETURN_FAIL;
        }
        mdres = ssl_md(s->session->cipher->algorithm2);
        if (mdres == ((void*)0)) {




            goto dopsksess;
        }

        if (s->hello_retry_request == SSL_HRR_PENDING && mdres != handmd) {




            goto dopsksess;
        }
        now = (uint32_t)time(((void*)0));
        agesec = now - (uint32_t)s->session->time;
        if (agesec > 0)
            agesec--;

        if (s->session->ext.tick_lifetime_hint < agesec) {

            goto dopsksess;
        }





        agems = agesec * (uint32_t)1000;

        if (agesec != 0 && agems / (uint32_t)1000 != agesec) {




            goto dopsksess;
        }





        agems += s->session->ext.tick_age_add;

        reshashsize = EVP_MD_size(mdres);
        s->ext.tick_identity++;
        dores = 1;
    }

 dopsksess:
    if (!dores && s->psksession == ((void*)0))
        return EXT_RETURN_NOT_SENT;

    if (s->psksession != ((void*)0)) {
        mdpsk = ssl_md(s->psksession->cipher->algorithm2);
        if (mdpsk == ((void*)0)) {




            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CTOS_PSK,
                     SSL_R_BAD_PSK);
            return EXT_RETURN_FAIL;
        }

        if (s->hello_retry_request == SSL_HRR_PENDING && mdpsk != handmd) {




            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CTOS_PSK,
                     SSL_R_BAD_PSK);
            return EXT_RETURN_FAIL;
        }

        pskhashsize = EVP_MD_size(mdpsk);
    }


    if (!WPACKET_put_bytes_u16(pkt, TLSEXT_TYPE_psk)
            || !WPACKET_start_sub_packet_u16(pkt)
            || !WPACKET_start_sub_packet_u16(pkt)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CTOS_PSK,
                 ERR_R_INTERNAL_ERROR);
        return EXT_RETURN_FAIL;
    }

    if (dores) {
        if (!WPACKET_sub_memcpy_u16(pkt, s->session->ext.tick,
                                           s->session->ext.ticklen)
                || !WPACKET_put_bytes_u32(pkt, agems)) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CTOS_PSK,
                     ERR_R_INTERNAL_ERROR);
            return EXT_RETURN_FAIL;
        }
    }

    if (s->psksession != ((void*)0)) {
        if (!WPACKET_sub_memcpy_u16(pkt, s->psksession_id,
                                    s->psksession_id_len)
                || !WPACKET_put_bytes_u32(pkt, 0)) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CTOS_PSK,
                     ERR_R_INTERNAL_ERROR);
            return EXT_RETURN_FAIL;
        }
        s->ext.tick_identity++;
    }

    if (!WPACKET_close(pkt)
            || !WPACKET_get_total_written(pkt, &binderoffset)
            || !WPACKET_start_sub_packet_u16(pkt)
            || (dores
                && !WPACKET_sub_allocate_bytes_u8(pkt, reshashsize, &resbinder))
            || (s->psksession != ((void*)0)
                && !WPACKET_sub_allocate_bytes_u8(pkt, pskhashsize, &pskbinder))
            || !WPACKET_close(pkt)
            || !WPACKET_close(pkt)
            || !WPACKET_get_total_written(pkt, &msglen)




            || !WPACKET_fill_lengths(pkt)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CTOS_PSK,
                 ERR_R_INTERNAL_ERROR);
        return EXT_RETURN_FAIL;
    }

    msgstart = WPACKET_get_curr(pkt) - msglen;

    if (dores
            && tls_psk_do_binder(s, mdres, msgstart, binderoffset, ((void*)0),
                                 resbinder, s->session, 1, 0) != 1) {

        return EXT_RETURN_FAIL;
    }

    if (s->psksession != ((void*)0)
            && tls_psk_do_binder(s, mdpsk, msgstart, binderoffset, ((void*)0),
                                 pskbinder, s->psksession, 1, 1) != 1) {

        return EXT_RETURN_FAIL;
    }

    return EXT_RETURN_SENT;



}
