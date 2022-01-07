
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum macsec_cap { ____Placeholder_macsec_cap } macsec_cap ;


 int wpa_drv_macsec_get_capability (void*,int*) ;

__attribute__((used)) static int wpas_macsec_get_capability(void *priv, enum macsec_cap *cap)
{
 return wpa_drv_macsec_get_capability(priv, cap);
}
