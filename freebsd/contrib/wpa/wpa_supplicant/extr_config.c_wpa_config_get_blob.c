
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct wpa_config_blob {struct wpa_config_blob const* next; int name; } const wpa_config_blob ;
struct wpa_config {struct wpa_config_blob const* blobs; } ;


 scalar_t__ os_strcmp (int ,char const*) ;

const struct wpa_config_blob * wpa_config_get_blob(struct wpa_config *config,
         const char *name)
{
 struct wpa_config_blob *blob = config->blobs;

 while (blob) {
  if (os_strcmp(blob->name, name) == 0)
   return blob;
  blob = blob->next;
 }
 return ((void*)0);
}
