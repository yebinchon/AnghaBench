
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int X509_ALGOR ;
struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ EVP_MD ;


 int EVP_MD_FLAG_DIGALGID_ABSENT ;
 int EVP_MD_type (TYPE_1__ const*) ;
 int OBJ_nid2obj (int ) ;
 int V_ASN1_NULL ;
 int V_ASN1_UNDEF ;
 int X509_ALGOR_set0 (int *,int ,int,int *) ;

void X509_ALGOR_set_md(X509_ALGOR *alg, const EVP_MD *md)
{
    int param_type;

    if (md->flags & EVP_MD_FLAG_DIGALGID_ABSENT)
        param_type = V_ASN1_UNDEF;
    else
        param_type = V_ASN1_NULL;

    X509_ALGOR_set0(alg, OBJ_nid2obj(EVP_MD_type(md)), param_type, ((void*)0));

}
