
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int length; unsigned int* components; } ;
typedef TYPE_1__ heim_oid ;
typedef TYPE_2__* gss_OID ;
struct TYPE_10__ {int length; int elements; } ;


 int der_free_oid (TYPE_1__*) ;
 int der_get_oid (int ,int ,TYPE_1__*,int *) ;
 scalar_t__ der_heim_oid_cmp (TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static int
oid_prefix_equal(gss_OID oid_enc, gss_OID prefix_enc, unsigned *suffix)
{
    int ret;
    heim_oid oid;
    heim_oid prefix;

    *suffix = 0;

    ret = der_get_oid(oid_enc->elements, oid_enc->length,
        &oid, ((void*)0));
    if (ret) {
 return 0;
    }

    ret = der_get_oid(prefix_enc->elements, prefix_enc->length,
        &prefix, ((void*)0));
    if (ret) {
 der_free_oid(&oid);
 return 0;
    }

    ret = 0;

    if (oid.length - 1 == prefix.length) {
 *suffix = oid.components[oid.length - 1];
 oid.length--;
 ret = (der_heim_oid_cmp(&oid, &prefix) == 0);
 oid.length++;
    }

    der_free_oid(&oid);
    der_free_oid(&prefix);

    return ret;
}
