
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ENGINE ;
typedef int CONF_IMODULE ;


 int ENGINE_finish (int *) ;
 int * initialized_engines ;
 int sk_ENGINE_free (int *) ;
 int * sk_ENGINE_pop (int *) ;

__attribute__((used)) static void int_engine_module_finish(CONF_IMODULE *md)
{
    ENGINE *e;

    while ((e = sk_ENGINE_pop(initialized_engines)))
        ENGINE_finish(e);
    sk_ENGINE_free(initialized_engines);
    initialized_engines = ((void*)0);
}
