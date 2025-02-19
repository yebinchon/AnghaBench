
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef union ccb {int dummy; } ccb ;
typedef int u_int ;
struct scsi_inquiry_data {int flags; int spi3data; } ;
struct ccb_trans_settings_spi {int valid; int bus_width; int flags; int ppr_options; scalar_t__ sync_offset; scalar_t__ sync_period; } ;
struct ccb_trans_settings_scsi {int flags; int valid; } ;
struct TYPE_7__ {struct ccb_trans_settings_spi spi; } ;
struct TYPE_6__ {struct ccb_trans_settings_scsi scsi; } ;
struct TYPE_10__ {int func_code; int status; } ;
struct ccb_trans_settings {scalar_t__ protocol; scalar_t__ protocol_version; scalar_t__ transport; scalar_t__ transport_version; scalar_t__ type; TYPE_2__ xport_specific; TYPE_1__ proto_specific; TYPE_5__ ccb_h; } ;
struct TYPE_8__ {int ppr_options; } ;
struct TYPE_9__ {TYPE_3__ spi; } ;
struct ccb_pathinq {int hba_inquiry; TYPE_4__ xport_specific; TYPE_5__ ccb_h; } ;
struct cam_path {struct cam_ed* device; } ;
struct cam_ed {scalar_t__ protocol; scalar_t__ protocol_version; scalar_t__ transport; scalar_t__ transport_version; int queue_flags; scalar_t__ mintags; int flags; int inq_flags; int tag_delay_count; struct scsi_inquiry_data inq_data; } ;


 int CAM_DEV_INQUIRY_DATA_VALID ;
 int CAM_DEV_TAG_AFTER_COUNT ;
 int CAM_PATH_INVALID ;
 int CAM_PRIORITY_NONE ;
 scalar_t__ CAM_REQ_CMP ;
 int CAM_TAG_DELAY_COUNT ;
 int CTS_SCSI_FLAGS_TAG_ENB ;
 int CTS_SCSI_VALID_TQ ;
 int CTS_SPI_FLAGS_DISC_ENB ;
 int CTS_SPI_VALID_BUS_WIDTH ;
 int CTS_SPI_VALID_DISC ;
 int CTS_SPI_VALID_PPR_OPTIONS ;
 int CTS_SPI_VALID_SYNC_OFFSET ;
 int CTS_SPI_VALID_SYNC_RATE ;
 scalar_t__ CTS_TYPE_CURRENT_SETTINGS ;
 scalar_t__ CTS_TYPE_USER_SETTINGS ;
 int FALSE ;
 scalar_t__ INQ_DATA_TQ_ENABLED (struct scsi_inquiry_data*) ;
 int MSG_EXT_PPR_DT_REQ ;
 int MSG_EXT_PPR_IU_REQ ;
 int MSG_EXT_PPR_QAS_REQ ;



 int PI_SDTR_ABLE ;
 int PI_TAG_ABLE ;
 int PI_WIDE_16 ;
 int PI_WIDE_32 ;
 scalar_t__ PROTO_SCSI ;
 scalar_t__ PROTO_UNKNOWN ;
 scalar_t__ PROTO_UNSPECIFIED ;
 scalar_t__ PROTO_VERSION_UNKNOWN ;
 scalar_t__ PROTO_VERSION_UNSPECIFIED ;
 int SCP_QUEUE_DQUE ;
 int SID_CmdQue ;
 int SID_SPI_CLOCK_DT ;
 int SID_SPI_IUS ;
 int SID_SPI_QAS ;
 int SID_Sync ;
 int SID_WBus16 ;
 int SID_WBus32 ;
 int TRUE ;
 scalar_t__ XPORT_SPI ;
 scalar_t__ XPORT_UNKNOWN ;
 scalar_t__ XPORT_UNSPECIFIED ;
 scalar_t__ XPORT_VERSION_UNKNOWN ;
 scalar_t__ XPORT_VERSION_UNSPECIFIED ;
 int XPT_GET_TRAN_SETTINGS ;
 int XPT_PATH_INQ ;
 scalar_t__ bootverbose ;
 scalar_t__ cam_ccb_status (union ccb*) ;
 int scsi_toggle_tags (struct cam_path*) ;
 int xpt_action (union ccb*) ;
 int xpt_action_default (union ccb*) ;
 int xpt_done (union ccb*) ;
 int xpt_print (struct cam_path*,char*,scalar_t__,scalar_t__) ;
 int xpt_setup_ccb (TYPE_5__*,struct cam_path*,int ) ;
 int xpt_stop_tags (struct cam_path*) ;

__attribute__((used)) static void
scsi_set_transfer_settings(struct ccb_trans_settings *cts, struct cam_path *path,
      int async_update)
{
 struct ccb_pathinq cpi;
 struct ccb_trans_settings cur_cts;
 struct ccb_trans_settings_scsi *scsi;
 struct ccb_trans_settings_scsi *cur_scsi;
 struct scsi_inquiry_data *inq_data;
 struct cam_ed *device;

 if (path == ((void*)0) || (device = path->device) == ((void*)0)) {
  cts->ccb_h.status = CAM_PATH_INVALID;
  xpt_done((union ccb *)cts);
  return;
 }

 if (cts->protocol == PROTO_UNKNOWN
  || cts->protocol == PROTO_UNSPECIFIED) {
  cts->protocol = device->protocol;
  cts->protocol_version = device->protocol_version;
 }

 if (cts->protocol_version == PROTO_VERSION_UNKNOWN
  || cts->protocol_version == PROTO_VERSION_UNSPECIFIED)
  cts->protocol_version = device->protocol_version;

 if (cts->protocol != device->protocol) {
  xpt_print(path, "Uninitialized Protocol %x:%x?\n",
         cts->protocol, device->protocol);
  cts->protocol = device->protocol;
 }

 if (cts->protocol_version > device->protocol_version) {
  if (bootverbose) {
   xpt_print(path, "Down reving Protocol "
       "Version from %d to %d?\n", cts->protocol_version,
       device->protocol_version);
  }
  cts->protocol_version = device->protocol_version;
 }

 if (cts->transport == XPORT_UNKNOWN
  || cts->transport == XPORT_UNSPECIFIED) {
  cts->transport = device->transport;
  cts->transport_version = device->transport_version;
 }

 if (cts->transport_version == XPORT_VERSION_UNKNOWN
  || cts->transport_version == XPORT_VERSION_UNSPECIFIED)
  cts->transport_version = device->transport_version;

 if (cts->transport != device->transport) {
  xpt_print(path, "Uninitialized Transport %x:%x?\n",
      cts->transport, device->transport);
  cts->transport = device->transport;
 }

 if (cts->transport_version > device->transport_version) {
  if (bootverbose) {
   xpt_print(path, "Down reving Transport "
       "Version from %d to %d?\n", cts->transport_version,
       device->transport_version);
  }
  cts->transport_version = device->transport_version;
 }






 if (cts->protocol != PROTO_SCSI) {
  if (async_update == FALSE)
   xpt_action_default((union ccb *)cts);
  return;
 }

 inq_data = &device->inq_data;
 scsi = &cts->proto_specific.scsi;
 xpt_setup_ccb(&cpi.ccb_h, path, CAM_PRIORITY_NONE);
 cpi.ccb_h.func_code = XPT_PATH_INQ;
 xpt_action((union ccb *)&cpi);


 if ((cpi.hba_inquiry & PI_TAG_ABLE) == 0
  || (INQ_DATA_TQ_ENABLED(inq_data)) == 0
  || (device->queue_flags & SCP_QUEUE_DQUE) != 0
  || (device->mintags == 0)) {




  scsi->flags &= ~CTS_SCSI_FLAGS_TAG_ENB;
 }

 if (async_update == FALSE) {




  xpt_setup_ccb(&cur_cts.ccb_h, path, CAM_PRIORITY_NONE);
  cur_cts.ccb_h.func_code = XPT_GET_TRAN_SETTINGS;
  cur_cts.type = cts->type;
  xpt_action((union ccb *)&cur_cts);
  if (cam_ccb_status((union ccb *)&cur_cts) != CAM_REQ_CMP) {
   return;
  }
  cur_scsi = &cur_cts.proto_specific.scsi;
  if ((scsi->valid & CTS_SCSI_VALID_TQ) == 0) {
   scsi->flags &= ~CTS_SCSI_FLAGS_TAG_ENB;
   scsi->flags |= cur_scsi->flags & CTS_SCSI_FLAGS_TAG_ENB;
  }
  if ((cur_scsi->valid & CTS_SCSI_VALID_TQ) == 0)
   scsi->flags &= ~CTS_SCSI_FLAGS_TAG_ENB;
 }


 if (cts->transport == XPORT_SPI && async_update == FALSE) {
  u_int spi3caps;
  struct ccb_trans_settings_spi *spi;
  struct ccb_trans_settings_spi *cur_spi;

  spi = &cts->xport_specific.spi;

  cur_spi = &cur_cts.xport_specific.spi;


  if ((spi->valid & CTS_SPI_VALID_SYNC_RATE) == 0)
   spi->sync_period = cur_spi->sync_period;
  if ((cur_spi->valid & CTS_SPI_VALID_SYNC_RATE) == 0)
   spi->sync_period = 0;
  if ((spi->valid & CTS_SPI_VALID_SYNC_OFFSET) == 0)
   spi->sync_offset = cur_spi->sync_offset;
  if ((cur_spi->valid & CTS_SPI_VALID_SYNC_OFFSET) == 0)
   spi->sync_offset = 0;
  if ((spi->valid & CTS_SPI_VALID_PPR_OPTIONS) == 0)
   spi->ppr_options = cur_spi->ppr_options;
  if ((cur_spi->valid & CTS_SPI_VALID_PPR_OPTIONS) == 0)
   spi->ppr_options = 0;
  if ((spi->valid & CTS_SPI_VALID_BUS_WIDTH) == 0)
   spi->bus_width = cur_spi->bus_width;
  if ((cur_spi->valid & CTS_SPI_VALID_BUS_WIDTH) == 0)
   spi->bus_width = 0;
  if ((spi->valid & CTS_SPI_VALID_DISC) == 0) {
   spi->flags &= ~CTS_SPI_FLAGS_DISC_ENB;
   spi->flags |= cur_spi->flags & CTS_SPI_FLAGS_DISC_ENB;
  }
  if ((cur_spi->valid & CTS_SPI_VALID_DISC) == 0)
   spi->flags &= ~CTS_SPI_FLAGS_DISC_ENB;
  if (((device->flags & CAM_DEV_INQUIRY_DATA_VALID) != 0
    && (inq_data->flags & SID_Sync) == 0
    && cts->type == CTS_TYPE_CURRENT_SETTINGS)
   || ((cpi.hba_inquiry & PI_SDTR_ABLE) == 0)) {

   spi->sync_period = 0;
   spi->sync_offset = 0;
  }

  switch (spi->bus_width) {
  case 129:
   if (((device->flags & CAM_DEV_INQUIRY_DATA_VALID) == 0
     || (inq_data->flags & SID_WBus32) != 0
     || cts->type == CTS_TYPE_USER_SETTINGS)
    && (cpi.hba_inquiry & PI_WIDE_32) != 0)
    break;

  case 130:
   if (((device->flags & CAM_DEV_INQUIRY_DATA_VALID) == 0
     || (inq_data->flags & SID_WBus16) != 0
     || cts->type == CTS_TYPE_USER_SETTINGS)
    && (cpi.hba_inquiry & PI_WIDE_16) != 0) {
    spi->bus_width = 130;
    break;
   }

  default:
  case 128:

   spi->bus_width = 128;
   break;
  }

  spi3caps = cpi.xport_specific.spi.ppr_options;
  if ((device->flags & CAM_DEV_INQUIRY_DATA_VALID) != 0
   && cts->type == CTS_TYPE_CURRENT_SETTINGS)
   spi3caps &= inq_data->spi3data;

  if ((spi3caps & SID_SPI_CLOCK_DT) == 0)
   spi->ppr_options &= ~MSG_EXT_PPR_DT_REQ;

  if ((spi3caps & SID_SPI_IUS) == 0)
   spi->ppr_options &= ~MSG_EXT_PPR_IU_REQ;

  if ((spi3caps & SID_SPI_QAS) == 0)
   spi->ppr_options &= ~MSG_EXT_PPR_QAS_REQ;


  if (spi->bus_width == 0)
   spi->ppr_options = 0;

  if ((spi->valid & CTS_SPI_VALID_DISC)
   && ((spi->flags & CTS_SPI_FLAGS_DISC_ENB) == 0)) {



   scsi->flags &= ~CTS_SCSI_FLAGS_TAG_ENB;
   scsi->valid |= CTS_SCSI_VALID_TQ;
  }







  if (cts->type == CTS_TYPE_CURRENT_SETTINGS
   && (device->inq_flags & SID_CmdQue) != 0
   && (scsi->flags & CTS_SCSI_FLAGS_TAG_ENB) != 0
   && (spi->flags & (CTS_SPI_VALID_SYNC_RATE|
       CTS_SPI_VALID_SYNC_OFFSET|
       CTS_SPI_VALID_BUS_WIDTH)) != 0)
   scsi_toggle_tags(path);
 }

 if (cts->type == CTS_TYPE_CURRENT_SETTINGS
  && (scsi->valid & CTS_SCSI_VALID_TQ) != 0) {
  int device_tagenb;
  if ((device->flags & CAM_DEV_TAG_AFTER_COUNT) != 0
   || (device->inq_flags & SID_CmdQue) != 0)
   device_tagenb = TRUE;
  else
   device_tagenb = FALSE;

  if (((scsi->flags & CTS_SCSI_FLAGS_TAG_ENB) != 0
    && device_tagenb == FALSE)
   || ((scsi->flags & CTS_SCSI_FLAGS_TAG_ENB) == 0
    && device_tagenb == TRUE)) {

   if ((scsi->flags & CTS_SCSI_FLAGS_TAG_ENB) != 0) {







    device->tag_delay_count = CAM_TAG_DELAY_COUNT;
    device->flags |= CAM_DEV_TAG_AFTER_COUNT;
   } else {
    xpt_stop_tags(path);
   }
  }
 }
 if (async_update == FALSE)
  xpt_action_default((union ccb *)cts);
}
