
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int post_handshake_auth; } ;
typedef TYPE_1__ SSL ;


 int SSL_PHA_NONE ;

__attribute__((used)) static int init_post_handshake_auth(SSL *s, unsigned int context)
{
    s->post_handshake_auth = SSL_PHA_NONE;

    return 1;
}
