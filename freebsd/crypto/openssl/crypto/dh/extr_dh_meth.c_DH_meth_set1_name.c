
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* name; } ;
typedef TYPE_1__ DH_METHOD ;


 int DH_F_DH_METH_SET1_NAME ;
 int DHerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (char*) ;
 char* OPENSSL_strdup (char const*) ;

int DH_meth_set1_name(DH_METHOD *dhm, const char *name)
{
    char *tmpname = OPENSSL_strdup(name);

    if (tmpname == ((void*)0)) {
        DHerr(DH_F_DH_METH_SET1_NAME, ERR_R_MALLOC_FAILURE);
        return 0;
    }

    OPENSSL_free(dhm->name);
    dhm->name = tmpname;

    return 1;
}
