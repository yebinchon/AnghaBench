
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct transmit_sa {int dummy; } ;


 int wpa_drv_set_transmit_next_pn (void*,struct transmit_sa*) ;

__attribute__((used)) static int wpas_set_transmit_next_pn(void *wpa_s, struct transmit_sa *sa)
{
 return wpa_drv_set_transmit_next_pn(wpa_s, sa);
}
