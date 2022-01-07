
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_config_blob {struct wpa_config_blob* next; int name; } ;
struct wpa_config {struct wpa_config_blob* blobs; } ;


 int wpa_config_remove_blob (struct wpa_config*,int ) ;

void wpa_config_set_blob(struct wpa_config *config,
    struct wpa_config_blob *blob)
{
 wpa_config_remove_blob(config, blob->name);
 blob->next = config->blobs;
 config->blobs = blob;
}
