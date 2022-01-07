
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * tqh_last; } ;
typedef TYPE_1__ xo_encoder_list_t ;


 int TAILQ_INIT (TYPE_1__*) ;

__attribute__((used)) static void
xo_encoder_list_init (xo_encoder_list_t *listp)
{
    if (listp->tqh_last == ((void*)0))
 TAILQ_INIT(listp);
}
