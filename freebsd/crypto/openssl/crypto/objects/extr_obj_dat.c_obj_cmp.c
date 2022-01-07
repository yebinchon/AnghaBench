
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int length; int data; } ;
typedef TYPE_1__ ASN1_OBJECT ;


 int memcmp (int ,int ,scalar_t__) ;
 TYPE_1__* nid_objs ;

__attribute__((used)) static int obj_cmp(const ASN1_OBJECT *const *ap, const unsigned int *bp)
{
    int j;
    const ASN1_OBJECT *a = *ap;
    const ASN1_OBJECT *b = &nid_objs[*bp];

    j = (a->length - b->length);
    if (j)
        return j;
    if (a->length == 0)
        return 0;
    return memcmp(a->data, b->data, a->length);
}
