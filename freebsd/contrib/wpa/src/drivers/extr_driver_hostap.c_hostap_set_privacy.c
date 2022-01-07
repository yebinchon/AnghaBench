
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostap_drvier_data {int dummy; } ;


 int PRISM2_PARAM_PRIVACY_INVOKED ;
 int hostap_ioctl_prism2param (struct hostap_drvier_data*,int ,int) ;

__attribute__((used)) static int hostap_set_privacy(void *priv, int enabled)
{
 struct hostap_drvier_data *drv = priv;

 return hostap_ioctl_prism2param(drv, PRISM2_PARAM_PRIVACY_INVOKED,
     enabled);
}
