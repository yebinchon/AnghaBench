
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


 int X509_PUBKEY_set (int *,int *) ;

int NETSCAPE_SPKI_set_pubkey(NETSCAPE_SPKI *x, EVP_PKEY *pkey)
{
    if ((x == ((void*)0)) || (x->spkac == ((void*)0)))
        return 0;
    return X509_PUBKEY_set(&(x->spkac->pubkey), pkey);
}
