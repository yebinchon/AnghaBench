
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; int * name; } ;
typedef TYPE_1__ DH_METHOD ;


 int DH_F_DH_METH_NEW ;
 int DHerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (TYPE_1__*) ;
 int * OPENSSL_strdup (char const*) ;
 TYPE_1__* OPENSSL_zalloc (int) ;

DH_METHOD *DH_meth_new(const char *name, int flags)
{
    DH_METHOD *dhm = OPENSSL_zalloc(sizeof(*dhm));

    if (dhm != ((void*)0)) {
        dhm->flags = flags;

        dhm->name = OPENSSL_strdup(name);
        if (dhm->name != ((void*)0))
            return dhm;

        OPENSSL_free(dhm);
    }

    DHerr(DH_F_DH_METH_NEW, ERR_R_MALLOC_FAILURE);
    return ((void*)0);
}
