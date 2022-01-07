
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct transmit_sc {int sci; } ;
struct macsec_qca_data {int transmit_channel_map; } ;


 int macsec_qca_lookup_channel (int ,int *,int *) ;

__attribute__((used)) static int macsec_qca_lookup_transmit_channel(struct macsec_qca_data *drv,
           struct transmit_sc *sc,
           u32 *channel)
{
 return macsec_qca_lookup_channel(drv->transmit_channel_map, &sc->sci,
      channel);
}
