
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gpio_handle_t ;
typedef int device ;


 int gpio_open_device (char*) ;
 int snprintf (char*,int,char*,unsigned int) ;

gpio_handle_t
gpio_open(unsigned int unit)
{
 char device[16];

 snprintf(device, sizeof(device), "/dev/gpioc%u", unit);

 return (gpio_open_device(device));
}
