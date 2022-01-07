
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int X509_LOOKUP_ctrl_fn ;
struct TYPE_3__ {int ctrl; } ;
typedef TYPE_1__ X509_LOOKUP_METHOD ;



X509_LOOKUP_ctrl_fn X509_LOOKUP_meth_get_ctrl(const X509_LOOKUP_METHOD *method)
{
    return method->ctrl;
}
