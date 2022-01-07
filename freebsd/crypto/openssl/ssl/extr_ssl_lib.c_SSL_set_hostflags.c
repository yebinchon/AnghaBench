
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int param; } ;
typedef TYPE_1__ SSL ;


 int X509_VERIFY_PARAM_set_hostflags (int ,unsigned int) ;

void SSL_set_hostflags(SSL *s, unsigned int flags)
{
    X509_VERIFY_PARAM_set_hostflags(s->param, flags);
}
