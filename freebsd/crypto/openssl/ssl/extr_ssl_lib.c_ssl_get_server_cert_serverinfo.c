
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {unsigned char* serverinfo; size_t serverinfo_length; } ;
struct TYPE_8__ {TYPE_2__* s3; } ;
struct TYPE_6__ {TYPE_4__* cert; } ;
struct TYPE_7__ {TYPE_1__ tmp; } ;
typedef TYPE_3__ SSL ;
typedef TYPE_4__ CERT_PKEY ;



int ssl_get_server_cert_serverinfo(SSL *s, const unsigned char **serverinfo,
                                   size_t *serverinfo_length)
{
    CERT_PKEY *cpk = s->s3->tmp.cert;
    *serverinfo_length = 0;

    if (cpk == ((void*)0) || cpk->serverinfo == ((void*)0))
        return 0;

    *serverinfo = cpk->serverinfo;
    *serverinfo_length = cpk->serverinfo_length;
    return 1;
}
