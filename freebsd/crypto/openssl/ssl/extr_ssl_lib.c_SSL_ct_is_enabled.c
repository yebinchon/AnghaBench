
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * ct_validation_callback; } ;
typedef TYPE_1__ SSL ;



int SSL_ct_is_enabled(const SSL *s)
{
    return s->ct_validation_callback != ((void*)0);
}
