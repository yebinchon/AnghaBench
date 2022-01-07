
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int spkac; int signature; int sig_algor; } ;
typedef TYPE_1__ NETSCAPE_SPKI ;
typedef int EVP_PKEY ;
typedef int EVP_MD ;


 int ASN1_ITEM_rptr (int ) ;
 int ASN1_item_sign (int ,int *,int *,int ,int ,int *,int const*) ;
 int NETSCAPE_SPKAC ;

int NETSCAPE_SPKI_sign(NETSCAPE_SPKI *x, EVP_PKEY *pkey, const EVP_MD *md)
{
    return (ASN1_item_sign(ASN1_ITEM_rptr(NETSCAPE_SPKAC), &x->sig_algor, ((void*)0),
                           x->signature, x->spkac, pkey, md));
}
