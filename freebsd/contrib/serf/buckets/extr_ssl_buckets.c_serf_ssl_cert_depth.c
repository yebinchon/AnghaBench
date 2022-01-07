
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int depth; } ;
typedef TYPE_1__ serf_ssl_certificate_t ;



int serf_ssl_cert_depth(const serf_ssl_certificate_t *cert)
{
    return cert->depth;
}
