
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bsd_driver_data {int dummy; } ;


 int bsd_set80211 (struct bsd_driver_data*,int,int ,void const*,int) ;

__attribute__((used)) static int
set80211var(struct bsd_driver_data *drv, int op, const void *arg, int arg_len)
{
 return bsd_set80211(drv, op, 0, arg, arg_len);
}
