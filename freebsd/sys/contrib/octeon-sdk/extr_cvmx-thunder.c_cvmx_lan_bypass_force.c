
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BYPASS_EN ;
 int cvmx_gpio_set (int ) ;
 int cvmx_lan_bypass_init () ;

int cvmx_lan_bypass_force(int force_bypass)
{
    if (force_bypass)
    {

        cvmx_gpio_set(BYPASS_EN);
    }
    else
    {
        cvmx_lan_bypass_init();
    }
    return 0;
}
