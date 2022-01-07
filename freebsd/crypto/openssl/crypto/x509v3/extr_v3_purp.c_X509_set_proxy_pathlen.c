
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {long ex_pcpathlen; } ;
typedef TYPE_1__ X509 ;



void X509_set_proxy_pathlen(X509 *x, long l)
{
    x->ex_pcpathlen = l;
}
