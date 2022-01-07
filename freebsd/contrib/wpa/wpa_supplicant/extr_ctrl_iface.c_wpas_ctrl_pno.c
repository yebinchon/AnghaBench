
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int* manual_sched_scan_freqs; } ;


 scalar_t__ atoi (char*) ;
 int* freq_range_to_channel_list (struct wpa_supplicant*,char*) ;
 int os_free (int*) ;
 char* os_strchr (char*,char) ;
 char* os_strstr (char*,char*) ;
 int wpas_start_pno (struct wpa_supplicant*) ;
 int wpas_stop_pno (struct wpa_supplicant*) ;

__attribute__((used)) static int wpas_ctrl_pno(struct wpa_supplicant *wpa_s, char *cmd)
{
 char *params;
 char *pos;
 int *freqs = ((void*)0);
 int ret;

 if (atoi(cmd)) {
  params = os_strchr(cmd, ' ');
  os_free(wpa_s->manual_sched_scan_freqs);
  if (params) {
   params++;
   pos = os_strstr(params, "freq=");
   if (pos)
    freqs = freq_range_to_channel_list(wpa_s,
           pos + 5);
  }
  wpa_s->manual_sched_scan_freqs = freqs;
  ret = wpas_start_pno(wpa_s);
 } else {
  ret = wpas_stop_pno(wpa_s);
 }
 return ret;
}
