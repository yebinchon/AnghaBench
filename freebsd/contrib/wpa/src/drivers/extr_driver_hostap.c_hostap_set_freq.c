
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ e; int m; } ;
struct TYPE_4__ {TYPE_1__ freq; } ;
struct iwreq {TYPE_2__ u; int ifr_name; } ;
struct hostapd_freq_params {int channel; } ;
struct hostap_driver_data {int ioctl_sock; int iface; } ;
typedef int iwr ;


 int IFNAMSIZ ;
 int MSG_ERROR ;
 int SIOCSIWFREQ ;
 int errno ;
 scalar_t__ ioctl (int ,int ,struct iwreq*) ;
 int os_memset (struct iwreq*,int ,int) ;
 int os_strlcpy (int ,int ,int ) ;
 int strerror (int ) ;
 int wpa_printf (int ,char*,int ) ;

__attribute__((used)) static int hostap_set_freq(void *priv, struct hostapd_freq_params *freq)
{
 struct hostap_driver_data *drv = priv;
 struct iwreq iwr;

 os_memset(&iwr, 0, sizeof(iwr));
 os_strlcpy(iwr.ifr_name, drv->iface, IFNAMSIZ);
 iwr.u.freq.m = freq->channel;
 iwr.u.freq.e = 0;

 if (ioctl(drv->ioctl_sock, SIOCSIWFREQ, &iwr) < 0) {
  wpa_printf(MSG_ERROR, "ioctl[SIOCSIWFREQ]: %s",
      strerror(errno));
  return -1;
 }

 return 0;
}
