
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211req {int i_type; int i_len; void* i_data; int i_name; } ;
struct bsd_driver_data {TYPE_1__* global; int ifname; } ;
struct TYPE_2__ {int sock; } ;


 int MSG_ERROR ;
 int SIOCG80211 ;
 int errno ;
 scalar_t__ ioctl (int ,int ,struct ieee80211req*) ;
 int os_memset (struct ieee80211req*,int ,int) ;
 int os_strlcpy (int ,int ,int) ;
 int strerror (int ) ;
 int wpa_printf (int ,char*,int,int,int ) ;

__attribute__((used)) static int
bsd_get80211(void *priv, struct ieee80211req *ireq, int op, void *arg,
      int arg_len)
{
 struct bsd_driver_data *drv = priv;

 os_memset(ireq, 0, sizeof(*ireq));
 os_strlcpy(ireq->i_name, drv->ifname, sizeof(ireq->i_name));
 ireq->i_type = op;
 ireq->i_len = arg_len;
 ireq->i_data = arg;

 if (ioctl(drv->global->sock, SIOCG80211, ireq) < 0) {
  wpa_printf(MSG_ERROR, "ioctl[SIOCG80211, op=%u, "
      "arg_len=%u]: %s", op, arg_len, strerror(errno));
  return -1;
 }
 return 0;
}
