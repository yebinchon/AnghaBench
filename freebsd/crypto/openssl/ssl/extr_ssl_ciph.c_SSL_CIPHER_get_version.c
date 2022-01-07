
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ min_tls; } ;
typedef TYPE_1__ SSL_CIPHER ;


 scalar_t__ TLS1_VERSION ;
 char const* ssl_protocol_to_string (scalar_t__) ;

const char *SSL_CIPHER_get_version(const SSL_CIPHER *c)
{
    if (c == ((void*)0))
        return "(NONE)";





    if (c->min_tls == TLS1_VERSION)
        return "TLSv1.0";
    return ssl_protocol_to_string(c->min_tls);
}
