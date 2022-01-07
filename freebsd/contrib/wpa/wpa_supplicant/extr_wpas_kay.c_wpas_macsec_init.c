
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macsec_init_params {int dummy; } ;


 int wpa_drv_macsec_init (void*,struct macsec_init_params*) ;

__attribute__((used)) static int wpas_macsec_init(void *priv, struct macsec_init_params *params)
{
 return wpa_drv_macsec_init(priv, params);
}
