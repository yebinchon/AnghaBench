
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int hx509_context ;
typedef TYPE_2__* hx509_ca_tbs ;
struct TYPE_4__ {int key; } ;
struct TYPE_5__ {TYPE_1__ flags; int spki; } ;
typedef int SubjectPublicKeyInfo ;


 int copy_SubjectPublicKeyInfo (int const*,int *) ;
 int free_SubjectPublicKeyInfo (int *) ;

int
hx509_ca_tbs_set_spki(hx509_context context,
        hx509_ca_tbs tbs,
        const SubjectPublicKeyInfo *spki)
{
    int ret;
    free_SubjectPublicKeyInfo(&tbs->spki);
    ret = copy_SubjectPublicKeyInfo(spki, &tbs->spki);
    tbs->flags.key = !ret;
    return ret;
}
