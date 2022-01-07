
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_config_blob {struct wpa_config_blob* next; int name; } ;
struct wpa_config {struct wpa_config_blob* blobs; } ;


 scalar_t__ os_strcmp (int ,char const*) ;
 int wpa_config_free_blob (struct wpa_config_blob*) ;

int wpa_config_remove_blob(struct wpa_config *config, const char *name)
{
 struct wpa_config_blob *pos = config->blobs, *prev = ((void*)0);

 while (pos) {
  if (os_strcmp(pos->name, name) == 0) {
   if (prev)
    prev->next = pos->next;
   else
    config->blobs = pos->next;
   wpa_config_free_blob(pos);
   return 0;
  }
  prev = pos;
  pos = pos->next;
 }

 return -1;
}
