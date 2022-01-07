
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_config {int dummy; } ;


 struct wpa_config* wpa_config_alloc_empty (int *,int *) ;

struct wpa_config * wpa_config_read(const char *name, struct wpa_config *cfgp)
{
 struct wpa_config *config;

 if (name == ((void*)0))
  return ((void*)0);
 if (cfgp)
  config = cfgp;
 else
  config = wpa_config_alloc_empty(((void*)0), ((void*)0));
 if (config == ((void*)0))
  return ((void*)0);

 return config;
}
