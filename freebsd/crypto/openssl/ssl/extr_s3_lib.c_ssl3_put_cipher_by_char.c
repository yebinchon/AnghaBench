
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WPACKET ;
struct TYPE_3__ {int id; } ;
typedef TYPE_1__ SSL_CIPHER ;


 int SSL3_CK_CIPHERSUITE_FLAG ;
 int WPACKET_put_bytes_u16 (int *,int) ;

int ssl3_put_cipher_by_char(const SSL_CIPHER *c, WPACKET *pkt, size_t *len)
{
    if ((c->id & 0xff000000) != SSL3_CK_CIPHERSUITE_FLAG) {
        *len = 0;
        return 1;
    }

    if (!WPACKET_put_bytes_u16(pkt, c->id & 0xffff))
        return 0;

    *len = 2;
    return 1;
}
