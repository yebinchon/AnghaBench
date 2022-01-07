
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_config_blob {int len; int data; struct wpa_config_blob* name; } ;


 int bin_clear_free (int ,int ) ;
 int os_free (struct wpa_config_blob*) ;

void wpa_config_free_blob(struct wpa_config_blob *blob)
{
 if (blob) {
  os_free(blob->name);
  bin_clear_free(blob->data, blob->len);
  os_free(blob);
 }
}
