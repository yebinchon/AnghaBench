
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* meth; } ;
struct TYPE_5__ {int (* destroy_data ) (TYPE_2__*) ;} ;
typedef TYPE_2__ CONF ;


 int stub1 (TYPE_2__*) ;

void NCONF_free_data(CONF *conf)
{
    if (conf == ((void*)0))
        return;
    conf->meth->destroy_data(conf);
}
