
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; int * name; } ;
typedef TYPE_1__ DSA_METHOD ;


 int DSA_F_DSA_METH_NEW ;
 int DSAerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (TYPE_1__*) ;
 int * OPENSSL_strdup (char const*) ;
 TYPE_1__* OPENSSL_zalloc (int) ;

DSA_METHOD *DSA_meth_new(const char *name, int flags)
{
    DSA_METHOD *dsam = OPENSSL_zalloc(sizeof(*dsam));

    if (dsam != ((void*)0)) {
        dsam->flags = flags;

        dsam->name = OPENSSL_strdup(name);
        if (dsam->name != ((void*)0))
            return dsam;

        OPENSSL_free(dsam);
    }

    DSAerr(DSA_F_DSA_METH_NEW, ERR_R_MALLOC_FAILURE);
    return ((void*)0);
}
