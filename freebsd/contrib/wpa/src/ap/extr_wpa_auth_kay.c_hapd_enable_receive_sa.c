
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct receive_sa {int dummy; } ;
struct hostapd_data {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* enable_receive_sa ) (int ,struct receive_sa*) ;} ;


 int stub1 (int ,struct receive_sa*) ;

__attribute__((used)) static int hapd_enable_receive_sa(void *priv, struct receive_sa *sa)
{
 struct hostapd_data *hapd = priv;

 if (!hapd->driver->enable_receive_sa)
  return -1;
 return hapd->driver->enable_receive_sa(hapd->drv_priv, sa);
}
