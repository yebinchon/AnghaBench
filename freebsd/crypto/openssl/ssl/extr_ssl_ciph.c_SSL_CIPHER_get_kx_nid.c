
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int nid; } ;
struct TYPE_5__ {int algorithm_mkey; } ;
typedef TYPE_1__ SSL_CIPHER ;


 int NID_undef ;
 int ssl_cipher_info_lookup (TYPE_2__*,int ) ;
 TYPE_2__* ssl_cipher_table_kx ;

int SSL_CIPHER_get_kx_nid(const SSL_CIPHER *c)
{
    int i = ssl_cipher_info_lookup(ssl_cipher_table_kx, c->algorithm_mkey);

    if (i == -1)
        return NID_undef;
    return ssl_cipher_table_kx[i].nid;
}
