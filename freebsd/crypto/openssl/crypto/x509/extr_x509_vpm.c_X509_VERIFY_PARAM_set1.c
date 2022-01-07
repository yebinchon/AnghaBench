
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {unsigned long inh_flags; } ;
typedef TYPE_1__ X509_VERIFY_PARAM ;


 int X509_VERIFY_PARAM_inherit (TYPE_1__*,TYPE_1__ const*) ;
 unsigned long X509_VP_FLAG_DEFAULT ;

int X509_VERIFY_PARAM_set1(X509_VERIFY_PARAM *to,
                           const X509_VERIFY_PARAM *from)
{
    unsigned long save_flags = to->inh_flags;
    int ret;
    to->inh_flags |= X509_VP_FLAG_DEFAULT;
    ret = X509_VERIFY_PARAM_inherit(to, from);
    to->inh_flags = save_flags;
    return ret;
}
