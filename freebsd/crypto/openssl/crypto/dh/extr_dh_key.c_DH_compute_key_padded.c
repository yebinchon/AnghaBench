
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int p; TYPE_1__* meth; } ;
struct TYPE_5__ {int (* compute_key ) (unsigned char*,int const*,TYPE_2__*) ;} ;
typedef TYPE_2__ DH ;
typedef int BIGNUM ;


 int BN_num_bytes (int ) ;
 int memmove (unsigned char*,unsigned char*,int) ;
 int memset (unsigned char*,int ,int) ;
 int stub1 (unsigned char*,int const*,TYPE_2__*) ;

int DH_compute_key_padded(unsigned char *key, const BIGNUM *pub_key, DH *dh)
{
    int rv, pad;
    rv = dh->meth->compute_key(key, pub_key, dh);
    if (rv <= 0)
        return rv;
    pad = BN_num_bytes(dh->p) - rv;
    if (pad > 0) {
        memmove(key + pad, key, rv);
        memset(key, 0, pad);
    }
    return rv + pad;
}
