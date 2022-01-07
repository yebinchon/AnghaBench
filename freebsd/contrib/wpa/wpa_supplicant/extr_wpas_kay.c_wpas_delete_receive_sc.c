
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct receive_sc {int dummy; } ;


 int wpa_drv_delete_receive_sc (void*,struct receive_sc*) ;

__attribute__((used)) static int wpas_delete_receive_sc(void *wpa_s, struct receive_sc *sc)
{
 return wpa_drv_delete_receive_sc(wpa_s, sc);
}
