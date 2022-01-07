
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_config_blob {struct wpa_config_blob* next; } ;
struct wpa_config {struct wpa_config_blob* blobs; } ;


 int wpa_config_free_blob (struct wpa_config_blob*) ;

void wpa_config_flush_blobs(struct wpa_config *config)
{

 struct wpa_config_blob *blob, *prev;

 blob = config->blobs;
 config->blobs = ((void*)0);
 while (blob) {
  prev = blob;
  blob = blob->next;
  wpa_config_free_blob(prev);
 }

}
