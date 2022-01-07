
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_uuid_pin {int list; } ;


 int dl_list_del (int *) ;
 int wps_free_pin (struct wps_uuid_pin*) ;

__attribute__((used)) static void wps_remove_pin(struct wps_uuid_pin *pin)
{
 dl_list_del(&pin->list);
 wps_free_pin(pin);
}
