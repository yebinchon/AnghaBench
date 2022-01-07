
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_connect_work {int dummy; } ;


 int os_free (struct wpa_connect_work*) ;

void wpas_connect_work_free(struct wpa_connect_work *cwork)
{
 if (cwork == ((void*)0))
  return;
 os_free(cwork);
}
