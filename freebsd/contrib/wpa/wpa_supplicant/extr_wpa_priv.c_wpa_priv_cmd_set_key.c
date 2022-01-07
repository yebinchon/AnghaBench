
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_priv_interface {int * drv_priv; int ifname; TYPE_1__* driver; } ;
struct privsep_cmd_set_key {scalar_t__ key_len; int * key; scalar_t__ seq_len; int * seq; int set_tx; int key_idx; int addr; int alg; } ;
struct TYPE_2__ {int (* set_key ) (int ,int *,int ,int ,int ,int ,int *,scalar_t__,int *,scalar_t__) ;} ;


 int MSG_DEBUG ;
 int stub1 (int ,int *,int ,int ,int ,int ,int *,scalar_t__,int *,scalar_t__) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static void wpa_priv_cmd_set_key(struct wpa_priv_interface *iface,
     void *buf, size_t len)
{
 struct privsep_cmd_set_key *params;
 int res;

 if (iface->drv_priv == ((void*)0) || iface->driver->set_key == ((void*)0))
  return;

 if (len != sizeof(*params)) {
  wpa_printf(MSG_DEBUG, "Invalid set_key request");
  return;
 }

 params = buf;

 res = iface->driver->set_key(iface->ifname, iface->drv_priv,
         params->alg,
         params->addr, params->key_idx,
         params->set_tx,
         params->seq_len ? params->seq : ((void*)0),
         params->seq_len,
         params->key_len ? params->key : ((void*)0),
         params->key_len);
 wpa_printf(MSG_DEBUG, "drv->set_key: res=%d", res);
}
