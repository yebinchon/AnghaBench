
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int name; } ;
typedef TYPE_1__ X509_VERIFY_PARAM ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int param_cmp(const X509_VERIFY_PARAM *const *a,
                     const X509_VERIFY_PARAM *const *b)
{
    return strcmp((*a)->name, (*b)->name);
}
