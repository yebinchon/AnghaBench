
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pha_enabled; } ;
typedef TYPE_1__ SSL ;



void SSL_set_post_handshake_auth(SSL *ssl, int val)
{
    ssl->pha_enabled = val;
}
