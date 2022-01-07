
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct transmit_sa {int dummy; } ;


 int wpa_drv_delete_transmit_sa (void*,struct transmit_sa*) ;

__attribute__((used)) static int wpas_delete_transmit_sa(void *wpa_s, struct transmit_sa *sa)
{
 return wpa_drv_delete_transmit_sa(wpa_s, sa);
}
