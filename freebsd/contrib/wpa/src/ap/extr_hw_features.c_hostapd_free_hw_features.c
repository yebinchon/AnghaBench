
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_hw_modes {struct hostapd_hw_modes* rates; struct hostapd_hw_modes* channels; } ;


 int os_free (struct hostapd_hw_modes*) ;

void hostapd_free_hw_features(struct hostapd_hw_modes *hw_features,
         size_t num_hw_features)
{
 size_t i;

 if (hw_features == ((void*)0))
  return;

 for (i = 0; i < num_hw_features; i++) {
  os_free(hw_features[i].channels);
  os_free(hw_features[i].rates);
 }

 os_free(hw_features);
}
