
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rlayer; } ;
typedef TYPE_1__ SSL ;


 int RECORD_LAYER_get_read_ahead (int *) ;

int SSL_get_read_ahead(const SSL *s)
{
    return RECORD_LAYER_get_read_ahead(&s->rlayer);
}
