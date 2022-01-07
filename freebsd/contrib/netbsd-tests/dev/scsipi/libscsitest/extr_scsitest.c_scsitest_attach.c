
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int adapt_nchannels; int adapt_max_periph; int adapt_openings; int chan_ntargets; int chan_nluns; struct TYPE_3__* chan_adapter; int chan_flags; scalar_t__ chan_id; int * chan_bustype; int adapt_dev; int adapt_minphys; int adapt_request; } ;
struct scsitest {TYPE_1__ sc_channel; TYPE_1__ sc_adapter; } ;
typedef int device_t ;


 int SCSIPI_CHAN_NOSETTLE ;
 int aprint_naive (char*) ;
 int aprint_normal (char*) ;
 int config_found_ia (int ,char*,TYPE_1__*,int ) ;
 struct scsitest* device_private (int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int minphys ;
 int scsi_bustype ;
 int scsiprint ;
 int scsitest_request ;

void
scsitest_attach(device_t parent, device_t self, void *aux)
{
 struct scsitest *sc = device_private(self);

 aprint_naive("\n");
 aprint_normal("\n");

 memset(&sc->sc_adapter, 0, sizeof(sc->sc_adapter));
 sc->sc_adapter.adapt_nchannels = 1;
 sc->sc_adapter.adapt_request = scsitest_request;
 sc->sc_adapter.adapt_minphys = minphys;
 sc->sc_adapter.adapt_dev = self;
 sc->sc_adapter.adapt_max_periph = 1;
 sc->sc_adapter.adapt_openings = 1;

 memset(&sc->sc_channel, 0, sizeof(sc->sc_channel));
 sc->sc_channel.chan_bustype = &scsi_bustype;
 sc->sc_channel.chan_ntargets = 2;
 sc->sc_channel.chan_nluns = 1;
 sc->sc_channel.chan_id = 0;
 sc->sc_channel.chan_flags = SCSIPI_CHAN_NOSETTLE;
 sc->sc_channel.chan_adapter = &sc->sc_adapter;

 config_found_ia(self, "scsi", &sc->sc_channel, scsiprint);
}
