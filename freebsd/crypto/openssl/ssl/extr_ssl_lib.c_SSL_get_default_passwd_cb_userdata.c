
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* default_passwd_callback_userdata; } ;
typedef TYPE_1__ SSL ;



void *SSL_get_default_passwd_cb_userdata(SSL *s)
{
    return s->default_passwd_callback_userdata;
}
