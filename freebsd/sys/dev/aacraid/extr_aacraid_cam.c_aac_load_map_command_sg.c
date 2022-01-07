
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aac_softc {int flags; int aac_buffer_dmat; } ;
struct aac_command {int cm_datalen; int cm_data; int cm_datamap; } ;


 int AAC_QUEUE_FRZN ;
 int EINPROGRESS ;
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ;
 char* HBA_FLAGS_DBG_INIT_B ;
 int aacraid_map_command_sg ;
 int bus_dmamap_load (int ,int ,int ,int ,int ,struct aac_command*,int ) ;
 int fwprintf (struct aac_softc*,char*,char*) ;
 int panic (char*,int) ;

__attribute__((used)) static int
aac_load_map_command_sg(struct aac_softc *sc, struct aac_command *cm)
{
 int error;

 fwprintf(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");
 error = bus_dmamap_load(sc->aac_buffer_dmat,
    cm->cm_datamap, cm->cm_data, cm->cm_datalen,
    aacraid_map_command_sg, cm, 0);
 if (error == EINPROGRESS) {
  fwprintf(sc, HBA_FLAGS_DBG_INIT_B, "freezing queue\n");
  sc->flags |= AAC_QUEUE_FRZN;
  error = 0;
 } else if (error != 0) {
  panic("aac_load_map_command_sg: unexpected error %d from "
        "busdma", error);
 }
 return(error);
}
