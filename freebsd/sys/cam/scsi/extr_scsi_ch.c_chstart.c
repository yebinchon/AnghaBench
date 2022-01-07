
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ccb_state; int * ccb_bp; } ;
union ccb {TYPE_1__ ccb_h; int csio; } ;
typedef int u_int8_t ;
struct scsi_mode_header_6 {int dummy; } ;
struct scsi_mode_blk_desc {int dummy; } ;
struct page_element_address_assignment {int dummy; } ;
struct ch_softc {int state; int quirks; } ;
struct cam_periph {scalar_t__ softc; } ;


 int CH_CCB_PROBE ;
 int CH_ELEMENT_ADDR_ASSIGN_PAGE ;
 int CH_Q_NO_DBD ;


 int CH_TIMEOUT_MODE_SENSE ;
 int FALSE ;
 int MSG_SIMPLE_Q_TAG ;
 int M_NOWAIT ;
 int M_SCSICH ;
 int SMS_PAGE_CTRL_CURRENT ;
 int SSD_FULL_SIZE ;
 int TRUE ;
 int bzero (void*,int) ;
 int chdone ;
 void* malloc (int,int ,int ) ;
 int printf (char*) ;
 int scsi_mode_sense (int *,int,int ,int ,int ,int ,int ,int *,int,int ,int ) ;
 int xpt_action (union ccb*) ;
 int xpt_release_ccb (union ccb*) ;

__attribute__((used)) static void
chstart(struct cam_periph *periph, union ccb *start_ccb)
{
 struct ch_softc *softc;

 softc = (struct ch_softc *)periph->softc;

 switch (softc->state) {
 case 129:
 {
  xpt_release_ccb(start_ccb);
  break;
 }
 case 128:
 {
  int mode_buffer_len;
  void *mode_buffer;





  mode_buffer_len = sizeof(struct scsi_mode_header_6) +
      sizeof(struct scsi_mode_blk_desc) +
     sizeof(struct page_element_address_assignment);

  mode_buffer = malloc(mode_buffer_len, M_SCSICH, M_NOWAIT);

  if (mode_buffer == ((void*)0)) {
   printf("chstart: couldn't malloc mode sense data\n");
   break;
  }
  bzero(mode_buffer, mode_buffer_len);




  scsi_mode_sense(&start_ccb->csio,
                  1,
                 chdone,
                     MSG_SIMPLE_Q_TAG,
              (softc->quirks & CH_Q_NO_DBD) ?
     FALSE : TRUE,
             SMS_PAGE_CTRL_CURRENT,
               CH_ELEMENT_ADDR_ASSIGN_PAGE,
                    (u_int8_t *)mode_buffer,
                    mode_buffer_len,
                    SSD_FULL_SIZE,
                  CH_TIMEOUT_MODE_SENSE);

  start_ccb->ccb_h.ccb_bp = ((void*)0);
  start_ccb->ccb_h.ccb_state = CH_CCB_PROBE;
  xpt_action(start_ccb);
  break;
 }
 }
}
