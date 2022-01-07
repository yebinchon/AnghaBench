
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_driver_privsep_data {int dummy; } ;
struct wpa_driver_capa {scalar_t__ extended_capa_len; int * extended_capa_mask; int * extended_capa; } ;


 int PRIVSEP_CMD_GET_CAPA ;
 int wpa_priv_cmd (struct wpa_driver_privsep_data*,int ,int *,int ,struct wpa_driver_capa*,size_t*) ;

__attribute__((used)) static int wpa_driver_privsep_get_capa(void *priv,
           struct wpa_driver_capa *capa)
{
 struct wpa_driver_privsep_data *drv = priv;
 int res;
 size_t len = sizeof(*capa);

 res = wpa_priv_cmd(drv, PRIVSEP_CMD_GET_CAPA, ((void*)0), 0, capa, &len);
 if (res < 0 || len != sizeof(*capa))
  return -1;

 capa->extended_capa = ((void*)0);
 capa->extended_capa_mask = ((void*)0);
 capa->extended_capa_len = 0;
 return 0;
}
