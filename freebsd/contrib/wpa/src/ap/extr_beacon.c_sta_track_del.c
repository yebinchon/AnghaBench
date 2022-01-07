
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_sta_info {int * probe_ie_taxonomy; } ;


 int os_free (struct hostapd_sta_info*) ;
 int wpabuf_free (int *) ;

void sta_track_del(struct hostapd_sta_info *info)
{




 os_free(info);
}
