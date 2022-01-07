
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int hash_id; int pkey_id; } ;
typedef TYPE_1__ nid_triple ;



__attribute__((used)) static int sigx_cmp(const nid_triple *const *a, const nid_triple *const *b)
{
    int ret;
    ret = (*a)->hash_id - (*b)->hash_id;
    if (ret)
        return ret;
    return (*a)->pkey_id - (*b)->pkey_id;
}
