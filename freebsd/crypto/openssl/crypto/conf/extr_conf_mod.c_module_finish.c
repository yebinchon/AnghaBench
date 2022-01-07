
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* value; struct TYPE_7__* name; TYPE_1__* pmod; } ;
struct TYPE_6__ {int links; int (* finish ) (TYPE_2__*) ;} ;
typedef TYPE_2__ CONF_IMODULE ;


 int OPENSSL_free (TYPE_2__*) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static void module_finish(CONF_IMODULE *imod)
{
    if (!imod)
        return;
    if (imod->pmod->finish)
        imod->pmod->finish(imod);
    imod->pmod->links--;
    OPENSSL_free(imod->name);
    OPENSSL_free(imod->value);
    OPENSSL_free(imod);
}
