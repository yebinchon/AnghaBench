
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ifname; } ;
struct macsec_drv_data {int parent_ifi; int ifname; int ifi; TYPE_1__ common; } ;


 int os_snprintf (char*,int,char*,int ,int ,int ,int ) ;
 scalar_t__ os_snprintf_error (int,int) ;

__attribute__((used)) static int macsec_drv_status(void *priv, char *buf, size_t buflen)
{
 struct macsec_drv_data *drv = priv;
 int res;
 char *pos, *end;

 pos = buf;
 end = buf + buflen;

 res = os_snprintf(pos, end - pos,
     "ifname=%s\n"
     "ifi=%d\n"
     "parent_ifname=%s\n"
     "parent_ifi=%d\n",
     drv->common.ifname, drv->ifi,
     drv->ifname, drv->parent_ifi);
 if (os_snprintf_error(end - pos, res))
  return pos - buf;
 pos += res;

 return pos - buf;
}
