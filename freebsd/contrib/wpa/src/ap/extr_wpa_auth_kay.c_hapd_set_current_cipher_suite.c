
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct hostapd_data {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* set_current_cipher_suite ) (int ,int ) ;} ;


 int stub1 (int ,int ) ;

__attribute__((used)) static int hapd_set_current_cipher_suite(void *priv, u64 cs)
{
 struct hostapd_data *hapd = priv;

 if (!hapd->driver->set_current_cipher_suite)
  return -1;
 return hapd->driver->set_current_cipher_suite(hapd->drv_priv, cs);
}
