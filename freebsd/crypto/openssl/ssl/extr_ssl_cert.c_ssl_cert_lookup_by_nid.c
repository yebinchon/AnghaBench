
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nid; } ;


 size_t OSSL_NELEM (TYPE_1__*) ;
 TYPE_1__* ssl_cert_info ;

int ssl_cert_lookup_by_nid(int nid, size_t *pidx)
{
    size_t i;

    for (i = 0; i < OSSL_NELEM(ssl_cert_info); i++) {
        if (ssl_cert_info[i].nid == nid) {
            *pidx = i;
            return 1;
        }
    }

    return 0;
}
