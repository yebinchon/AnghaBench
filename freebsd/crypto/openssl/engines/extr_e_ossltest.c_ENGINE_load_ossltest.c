
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ENGINE ;


 int ENGINE_add (int *) ;
 int ENGINE_free (int *) ;
 int ERR_clear_error () ;
 int * engine_ossltest () ;

void ENGINE_load_ossltest(void)
{

    ENGINE *toadd = engine_ossltest();
    if (!toadd)
        return;
    ENGINE_add(toadd);
    ENGINE_free(toadd);
    ERR_clear_error();
}
