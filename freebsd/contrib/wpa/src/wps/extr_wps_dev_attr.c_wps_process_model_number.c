
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wps_device_data {int * model_number; } ;


 int MSG_DEBUG ;
 int * dup_binstr (int const*,size_t) ;
 int os_free (int *) ;
 int wpa_hexdump_ascii (int ,char*,int const*,size_t) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int wps_process_model_number(struct wps_device_data *dev, const u8 *str,
        size_t str_len)
{
 if (str == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "WPS: No Model Number received");
  return -1;
 }

 wpa_hexdump_ascii(MSG_DEBUG, "WPS: Model Number", str, str_len);

 os_free(dev->model_number);
 dev->model_number = dup_binstr(str, str_len);
 if (dev->model_number == ((void*)0))
  return -1;

 return 0;
}
