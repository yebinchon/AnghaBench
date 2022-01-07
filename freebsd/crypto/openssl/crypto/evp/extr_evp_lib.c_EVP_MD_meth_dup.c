
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int pkey_type; int type; } ;
typedef TYPE_1__ EVP_MD ;


 TYPE_1__* EVP_MD_meth_new (int ,int ) ;
 int memcpy (TYPE_1__*,TYPE_1__ const*,int) ;

EVP_MD *EVP_MD_meth_dup(const EVP_MD *md)
{
    EVP_MD *to = EVP_MD_meth_new(md->type, md->pkey_type);

    if (to != ((void*)0))
        memcpy(to, md, sizeof(*to));
    return to;
}
