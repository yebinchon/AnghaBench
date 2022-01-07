
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_uuid_pin {int pin_len; int pin; } ;


 int bin_clear_free (int ,int ) ;
 int os_free (struct wps_uuid_pin*) ;

__attribute__((used)) static void wps_free_pin(struct wps_uuid_pin *pin)
{
 bin_clear_free(pin->pin, pin->pin_len);
 os_free(pin);
}
