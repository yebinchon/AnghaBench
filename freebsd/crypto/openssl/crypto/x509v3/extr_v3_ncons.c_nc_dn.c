
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ canon_enclen; int canon_enc; scalar_t__ modified; } ;
typedef TYPE_1__ X509_NAME ;


 int X509_V_ERR_OUT_OF_MEM ;
 int X509_V_ERR_PERMITTED_VIOLATION ;
 int X509_V_OK ;
 scalar_t__ i2d_X509_NAME (TYPE_1__*,int *) ;
 scalar_t__ memcmp (int ,int ,scalar_t__) ;

__attribute__((used)) static int nc_dn(X509_NAME *nm, X509_NAME *base)
{

    if (nm->modified && i2d_X509_NAME(nm, ((void*)0)) < 0)
        return X509_V_ERR_OUT_OF_MEM;
    if (base->modified && i2d_X509_NAME(base, ((void*)0)) < 0)
        return X509_V_ERR_OUT_OF_MEM;
    if (base->canon_enclen > nm->canon_enclen)
        return X509_V_ERR_PERMITTED_VIOLATION;
    if (memcmp(base->canon_enc, nm->canon_enc, base->canon_enclen))
        return X509_V_ERR_PERMITTED_VIOLATION;
    return X509_V_OK;
}
