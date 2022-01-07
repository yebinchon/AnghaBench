
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int trust; } ;
typedef TYPE_1__ X509_TRUST ;



__attribute__((used)) static int tr_cmp(const X509_TRUST *const *a, const X509_TRUST *const *b)
{
    return (*a)->trust - (*b)->trust;
}
