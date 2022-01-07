
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct receive_sa {int dummy; } ;


 int wpa_drv_get_receive_lowest_pn (void*,struct receive_sa*) ;

__attribute__((used)) static int wpas_get_receive_lowest_pn(void *wpa_s, struct receive_sa *sa)
{
 return wpa_drv_get_receive_lowest_pn(wpa_s, sa);
}
