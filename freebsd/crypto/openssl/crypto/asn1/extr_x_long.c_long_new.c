
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; } ;
typedef int ASN1_VALUE ;
typedef TYPE_1__ ASN1_ITEM ;


 int COPY_SIZE (int *,int ) ;
 int memcpy (int **,int *,int ) ;

__attribute__((used)) static int long_new(ASN1_VALUE **pval, const ASN1_ITEM *it)
{
    memcpy(pval, &it->size, COPY_SIZE(*pval, it->size));
    return 1;
}
