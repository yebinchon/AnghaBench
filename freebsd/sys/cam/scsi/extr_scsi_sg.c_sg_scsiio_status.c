
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_short ;
struct TYPE_2__ {int status; } ;
struct ccb_scsiio {TYPE_1__ ccb_h; } ;


 int CAM_AUTOSNS_VALID ;
 int CAM_STATUS_MASK ;

 int DID_ABORT ;
 int DID_BAD_TARGET ;
 int DID_BUS_BUSY ;
 int DID_ERROR ;
 int DID_NO_CONNECT ;
 int DID_OK ;
 int DID_PARITY ;
 int DID_RESET ;
 int DID_TIME_OUT ;
 int DRIVER_ERROR ;
 int DRIVER_INVALID ;
 int DRIVER_SENSE ;

__attribute__((used)) static void
sg_scsiio_status(struct ccb_scsiio *csio, u_short *hoststat, u_short *drvstat)
{
 int status;

 status = csio->ccb_h.status;

 switch (status & CAM_STATUS_MASK) {
 case 135:
  *hoststat = DID_OK;
  *drvstat = 0;
  break;
 case 134:
  *hoststat = DID_ERROR;
  *drvstat = 0;
  break;
 case 136:
  *hoststat = DID_ABORT;
  *drvstat = 0;
  break;
 case 133:
  *hoststat = DID_ERROR;
  *drvstat = DRIVER_INVALID;
  break;
 case 137:
  *hoststat = DID_BAD_TARGET;
  *drvstat = 0;
  break;
 case 129:
  *hoststat = DID_NO_CONNECT;
  *drvstat = 0;
  break;
 case 138:
  *hoststat = DID_TIME_OUT;
  *drvstat = 0;
  break;
 case 130:
  *hoststat = DID_ERROR;
  *drvstat = 0;
  break;
 case 131:
  *hoststat = DID_RESET;
  *drvstat = 0;
  break;
 case 128:
  *hoststat = DID_PARITY;
  *drvstat = 0;
  break;
 case 132:
  *hoststat = DID_BUS_BUSY;
  *drvstat = 0;
  break;
 default:
  *hoststat = DID_ERROR;
  *drvstat = DRIVER_ERROR;
 }

 if (status & CAM_AUTOSNS_VALID)
  *drvstat = DRIVER_SENSE;
}
