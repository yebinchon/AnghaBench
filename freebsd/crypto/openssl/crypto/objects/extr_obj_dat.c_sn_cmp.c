
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int sn; } ;
struct TYPE_4__ {int sn; } ;
typedef TYPE_1__ ASN1_OBJECT ;


 TYPE_3__* nid_objs ;
 int strcmp (int ,int ) ;

__attribute__((used)) static int sn_cmp(const ASN1_OBJECT *const *a, const unsigned int *b)
{
    return strcmp((*a)->sn, nid_objs[*b].sn);
}
