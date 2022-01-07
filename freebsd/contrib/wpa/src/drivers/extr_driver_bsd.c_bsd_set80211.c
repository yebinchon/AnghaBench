
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211req {int i_type; int i_val; int i_len; void* i_data; int i_name; } ;
struct bsd_driver_data {scalar_t__ ifindex; TYPE_1__* global; int ifname; scalar_t__ if_removed; } ;
typedef int ireq ;
struct TYPE_2__ {int sock; } ;


 int MSG_ERROR ;
 int SIOCS80211 ;
 int errno ;
 scalar_t__ ioctl (int ,int ,struct ieee80211req*) ;
 int os_memset (struct ieee80211req*,int ,int) ;
 int os_strlcpy (int ,int ,int) ;
 int strerror (int ) ;
 int wpa_printf (int ,char*,int,int,int,int ) ;

__attribute__((used)) static int
bsd_set80211(void *priv, int op, int val, const void *arg, int arg_len)
{
 struct bsd_driver_data *drv = priv;
 struct ieee80211req ireq;

 if (drv->ifindex == 0 || drv->if_removed)
  return -1;

 os_memset(&ireq, 0, sizeof(ireq));
 os_strlcpy(ireq.i_name, drv->ifname, sizeof(ireq.i_name));
 ireq.i_type = op;
 ireq.i_val = val;
 ireq.i_data = (void *) arg;
 ireq.i_len = arg_len;

 if (ioctl(drv->global->sock, SIOCS80211, &ireq) < 0) {
  wpa_printf(MSG_ERROR, "ioctl[SIOCS80211, op=%u, val=%u, "
      "arg_len=%u]: %s", op, val, arg_len,
      strerror(errno));
  return -1;
 }
 return 0;
}
