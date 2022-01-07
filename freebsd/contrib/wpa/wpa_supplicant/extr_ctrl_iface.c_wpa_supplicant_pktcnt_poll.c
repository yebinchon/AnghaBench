
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int dummy; } ;
struct hostap_sta_driver_data {int rx_packets; int tx_retry_failed; int tx_packets; } ;


 int os_snprintf (char*,size_t,char*,int ,int ,int ) ;
 scalar_t__ os_snprintf_error (size_t,int) ;
 int wpa_drv_pktcnt_poll (struct wpa_supplicant*,struct hostap_sta_driver_data*) ;

__attribute__((used)) static int wpa_supplicant_pktcnt_poll(struct wpa_supplicant *wpa_s, char *buf,
          size_t buflen)
{
 struct hostap_sta_driver_data sta;
 int ret;

 ret = wpa_drv_pktcnt_poll(wpa_s, &sta);
 if (ret)
  return -1;

 ret = os_snprintf(buf, buflen, "TXGOOD=%lu\nTXBAD=%lu\nRXGOOD=%lu\n",
     sta.tx_packets, sta.tx_retry_failed, sta.rx_packets);
 if (os_snprintf_error(buflen, ret))
  return -1;
 return ret;
}
