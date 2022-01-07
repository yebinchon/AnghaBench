
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ec; } ;
struct TYPE_6__ {TYPE_1__ pkey; } ;
typedef TYPE_2__ EVP_PKEY ;
typedef int EC_POINT ;
typedef int EC_GROUP ;


 int * EC_KEY_get0_group (int ) ;
 int * EC_KEY_get0_public_key (int ) ;
 int EC_POINT_cmp (int const*,int const*,int const*,int *) ;

__attribute__((used)) static int eckey_pub_cmp(const EVP_PKEY *a, const EVP_PKEY *b)
{
    int r;
    const EC_GROUP *group = EC_KEY_get0_group(b->pkey.ec);
    const EC_POINT *pa = EC_KEY_get0_public_key(a->pkey.ec),
        *pb = EC_KEY_get0_public_key(b->pkey.ec);
    if (group == ((void*)0) || pa == ((void*)0) || pb == ((void*)0))
        return -2;
    r = EC_POINT_cmp(group, pa, pb, ((void*)0));
    if (r == 0)
        return 1;
    if (r == 1)
        return 0;
    return -2;
}
