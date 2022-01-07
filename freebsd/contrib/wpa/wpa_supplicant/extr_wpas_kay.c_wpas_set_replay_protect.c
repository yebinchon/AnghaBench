
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int Boolean ;


 int wpa_drv_set_replay_protect (void*,int ,int ) ;

__attribute__((used)) static int wpas_set_replay_protect(void *wpa_s, Boolean enabled, u32 window)
{
 return wpa_drv_set_replay_protect(wpa_s, enabled, window);
}
