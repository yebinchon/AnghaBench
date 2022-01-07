
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int mdnid; int pknid; int secbits; int flags; } ;
typedef TYPE_1__ X509_SIG_INFO ;


 int X509_SIG_INFO_VALID ;

int X509_SIG_INFO_get(const X509_SIG_INFO *siginf, int *mdnid, int *pknid,
                      int *secbits, uint32_t *flags)
{
    if (mdnid != ((void*)0))
        *mdnid = siginf->mdnid;
    if (pknid != ((void*)0))
        *pknid = siginf->pknid;
    if (secbits != ((void*)0))
        *secbits = siginf->secbits;
    if (flags != ((void*)0))
        *flags = siginf->flags;
    return (siginf->flags & X509_SIG_INFO_VALID) != 0;
}
