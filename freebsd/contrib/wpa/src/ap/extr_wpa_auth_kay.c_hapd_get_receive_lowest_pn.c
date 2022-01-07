
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct receive_sa {int dummy; } ;
struct hostapd_data {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* get_receive_lowest_pn ) (int ,struct receive_sa*) ;} ;


 int stub1 (int ,struct receive_sa*) ;

__attribute__((used)) static int hapd_get_receive_lowest_pn(void *priv, struct receive_sa *sa)
{
 struct hostapd_data *hapd = priv;

 if (!hapd->driver->get_receive_lowest_pn)
  return -1;
 return hapd->driver->get_receive_lowest_pn(hapd->drv_priv, sa);
}
