
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int extensions; } ;
struct TYPE_5__ {TYPE_1__ cert_info; } ;
typedef TYPE_2__ X509 ;


 int X509v3_get_ext_by_NID (int ,int,int) ;

int X509_get_ext_by_NID(const X509 *x, int nid, int lastpos)
{
    return X509v3_get_ext_by_NID(x->cert_info.extensions, nid, lastpos);
}
