
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Boolean ;


 int wpa_drv_enable_protect_frames (void*,int ) ;

__attribute__((used)) static int wpas_enable_protect_frames(void *wpa_s, Boolean enabled)
{
 return wpa_drv_enable_protect_frames(wpa_s, enabled);
}
