
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* name; int dso; } ;
typedef TYPE_1__ CONF_MODULE ;


 int DSO_free (int ) ;
 int OPENSSL_free (TYPE_1__*) ;

__attribute__((used)) static void module_free(CONF_MODULE *md)
{
    DSO_free(md->dso);
    OPENSSL_free(md->name);
    OPENSSL_free(md);
}
