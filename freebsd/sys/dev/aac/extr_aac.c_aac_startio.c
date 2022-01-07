
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int dummy; } ;
struct aac_softc {int flags; int aac_buffer_dmat; } ;
struct aac_command {int cm_flags; scalar_t__ cm_datalen; int cm_data; int cm_datamap; scalar_t__ cm_private; } ;


 int AAC_CMD_MAPPED ;
 int AAC_QUEUE_FRZN ;
 int AAC_REQ_BIO ;
 int EINPROGRESS ;
 char* HBA_FLAGS_DBG_COMM_B ;
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ;
 int aac_bio_command (struct aac_softc*,struct aac_command**) ;
 struct aac_command* aac_dequeue_ready (struct aac_softc*) ;
 int aac_map_command_sg (struct aac_command*,int *,int ,int ) ;
 int bus_dmamap_load (int ,int ,int ,scalar_t__,int (*) (struct aac_command*,int *,int ,int ),struct aac_command*,int ) ;
 int bus_dmamap_load_bio (int ,int ,struct bio*,int (*) (struct aac_command*,int *,int ,int ),struct aac_command*,int ) ;
 int fwprintf (struct aac_softc*,char*,char*) ;
 int panic (char*,...) ;

void
aac_startio(struct aac_softc *sc)
{
 struct aac_command *cm;
 int error;

 fwprintf(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");

 for (;;) {




  if (sc->flags & AAC_QUEUE_FRZN)
   break;





  cm = aac_dequeue_ready(sc);





  if (cm == ((void*)0))
   aac_bio_command(sc, &cm);


  if (cm == ((void*)0))
   break;


  if (cm->cm_flags & AAC_CMD_MAPPED)
   panic("aac: command %p already mapped", cm);






  if (cm->cm_datalen != 0) {
   if (cm->cm_flags & AAC_REQ_BIO)
    error = bus_dmamap_load_bio(
        sc->aac_buffer_dmat, cm->cm_datamap,
        (struct bio *)cm->cm_private,
        aac_map_command_sg, cm, 0);
   else
    error = bus_dmamap_load(sc->aac_buffer_dmat,
        cm->cm_datamap, cm->cm_data,
        cm->cm_datalen, aac_map_command_sg, cm, 0);
   if (error == EINPROGRESS) {
    fwprintf(sc, HBA_FLAGS_DBG_COMM_B, "freezing queue\n");
    sc->flags |= AAC_QUEUE_FRZN;
   } else if (error != 0)
    panic("aac_startio: unexpected error %d from "
          "busdma", error);
  } else
   aac_map_command_sg(cm, ((void*)0), 0, 0);
 }
}
