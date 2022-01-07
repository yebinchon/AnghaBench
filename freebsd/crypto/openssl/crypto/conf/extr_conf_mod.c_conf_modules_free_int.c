
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONF_modules_finish () ;
 int CONF_modules_unload (int) ;

void conf_modules_free_int(void)
{
    CONF_modules_finish();
    CONF_modules_unload(1);
}
