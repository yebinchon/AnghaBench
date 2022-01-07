
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int X509_LOOKUP_get_by_subject_fn ;
struct TYPE_3__ {int get_by_subject; } ;
typedef TYPE_1__ X509_LOOKUP_METHOD ;



X509_LOOKUP_get_by_subject_fn X509_LOOKUP_meth_get_get_by_subject(
    const X509_LOOKUP_METHOD *method)
{
    return method->get_by_subject;
}
