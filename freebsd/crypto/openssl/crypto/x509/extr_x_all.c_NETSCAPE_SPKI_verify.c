
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int spkac; int signature; int sig_algor; } ;
typedef TYPE_1__ NETSCAPE_SPKI ;
typedef int EVP_PKEY ;


 int ASN1_ITEM_rptr (int ) ;
 int ASN1_item_verify (int ,int *,int ,int ,int *) ;
 int NETSCAPE_SPKAC ;

int NETSCAPE_SPKI_verify(NETSCAPE_SPKI *a, EVP_PKEY *r)
{
    return (ASN1_item_verify(ASN1_ITEM_rptr(NETSCAPE_SPKAC),
                             &a->sig_algor, a->signature, a->spkac, r));
}
