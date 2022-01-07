
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int wpa_drv_macsec_deinit (void*) ;

__attribute__((used)) static int wpas_macsec_deinit(void *priv)
{
 return wpa_drv_macsec_deinit(priv);
}
