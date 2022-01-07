
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macsec_qca_data {int secy_id; } ;


 int FALSE ;
 int nss_macsec_secy_en_set (int ,int ) ;
 int nss_macsec_secy_rx_sc_del_all (int ) ;
 int nss_macsec_secy_tx_sc_del_all (int ) ;

__attribute__((used)) static void __macsec_drv_deinit(struct macsec_qca_data *drv)
{
 nss_macsec_secy_en_set(drv->secy_id, FALSE);
 nss_macsec_secy_rx_sc_del_all(drv->secy_id);
 nss_macsec_secy_tx_sc_del_all(drv->secy_id);
}
