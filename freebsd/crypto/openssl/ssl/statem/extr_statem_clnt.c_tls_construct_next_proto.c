
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WPACKET ;
struct TYPE_5__ {size_t npn_len; int npn; } ;
struct TYPE_6__ {TYPE_1__ ext; } ;
typedef TYPE_2__ SSL ;


 int ERR_R_INTERNAL_ERROR ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_TLS_CONSTRUCT_NEXT_PROTO ;
 int SSLfatal (TYPE_2__*,int ,int ,int ) ;
 int WPACKET_sub_allocate_bytes_u8 (int *,size_t,unsigned char**) ;
 int WPACKET_sub_memcpy_u8 (int *,int ,size_t) ;
 int memset (unsigned char*,int ,size_t) ;

int tls_construct_next_proto(SSL *s, WPACKET *pkt)
{
    size_t len, padding_len;
    unsigned char *padding = ((void*)0);

    len = s->ext.npn_len;
    padding_len = 32 - ((len + 2) % 32);

    if (!WPACKET_sub_memcpy_u8(pkt, s->ext.npn, len)
            || !WPACKET_sub_allocate_bytes_u8(pkt, padding_len, &padding)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_NEXT_PROTO,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }

    memset(padding, 0, padding_len);

    return 1;
}
