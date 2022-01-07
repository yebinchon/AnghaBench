
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct transmit_sc {int dummy; } ;


 int wpa_drv_delete_transmit_sc (void*,struct transmit_sc*) ;

__attribute__((used)) static int wpas_delete_transmit_sc(void *wpa_s, struct transmit_sc *sc)
{
 return wpa_drv_delete_transmit_sc(wpa_s, sc);
}
