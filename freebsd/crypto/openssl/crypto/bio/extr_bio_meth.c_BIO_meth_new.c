
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int type; int * name; } ;
typedef TYPE_1__ BIO_METHOD ;


 int BIO_F_BIO_METH_NEW ;
 int BIOerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (TYPE_1__*) ;
 int * OPENSSL_strdup (char const*) ;
 TYPE_1__* OPENSSL_zalloc (int) ;

BIO_METHOD *BIO_meth_new(int type, const char *name)
{
    BIO_METHOD *biom = OPENSSL_zalloc(sizeof(BIO_METHOD));

    if (biom == ((void*)0)
            || (biom->name = OPENSSL_strdup(name)) == ((void*)0)) {
        OPENSSL_free(biom);
        BIOerr(BIO_F_BIO_METH_NEW, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }
    biom->type = type;
    return biom;
}
