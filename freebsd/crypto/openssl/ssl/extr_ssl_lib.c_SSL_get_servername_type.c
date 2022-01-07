
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ hostname; } ;
struct TYPE_9__ {TYPE_3__ ext; TYPE_2__* session; } ;
struct TYPE_6__ {scalar_t__ hostname; } ;
struct TYPE_7__ {TYPE_1__ ext; } ;
typedef TYPE_4__ SSL ;


 int TLSEXT_NAMETYPE_host_name ;

int SSL_get_servername_type(const SSL *s)
{
    if (s->session
        && (!s->ext.hostname ? s->session->
            ext.hostname : s->ext.hostname))
        return TLSEXT_NAMETYPE_host_name;
    return -1;
}
