
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BYPASS_STATUS ;
 int cvmx_gpio_read () ;

int cvmx_lan_bypass_is_active(void)
{
    return !!(cvmx_gpio_read() & BYPASS_STATUS);
}
