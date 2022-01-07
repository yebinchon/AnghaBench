
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* spkac; } ;
struct TYPE_4__ {int pubkey; } ;
typedef TYPE_2__ NETSCAPE_SPKI ;
typedef int EVP_PKEY ;


 int * X509_PUBKEY_get (int ) ;

EVP_PKEY *NETSCAPE_SPKI_get_pubkey(NETSCAPE_SPKI *x)
{
    if ((x == ((void*)0)) || (x->spkac == ((void*)0)))
        return ((void*)0);
    return X509_PUBKEY_get(x->spkac->pubkey);
}
