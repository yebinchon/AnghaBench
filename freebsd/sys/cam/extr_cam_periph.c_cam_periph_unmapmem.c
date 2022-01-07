
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_11__ {scalar_t__ bufsiz; int buf; } ;
struct TYPE_20__ {int func_code; scalar_t__ flags; } ;
struct TYPE_19__ {scalar_t__ dxfer_len; int * data_ptr; } ;
struct TYPE_18__ {scalar_t__ smp_request_len; scalar_t__ smp_response_len; int * smp_response; int * smp_request; } ;
struct TYPE_16__ {TYPE_4__* data; } ;
struct TYPE_17__ {TYPE_5__ cmd; } ;
struct TYPE_14__ {scalar_t__ dxfer_len; int * data_ptr; } ;
struct TYPE_13__ {scalar_t__ dxfer_len; int * data_ptr; } ;
struct TYPE_12__ {scalar_t__ pattern_buf_len; scalar_t__ match_buf_len; int matches; int patterns; } ;
union ccb {TYPE_10__ cdai; TYPE_9__ ccb_h; TYPE_8__ nvmeio; TYPE_7__ smpio; TYPE_6__ mmcio; TYPE_3__ ataio; TYPE_2__ csio; TYPE_1__ cdm; } ;
typedef int uint8_t ;
typedef int u_int8_t ;
typedef scalar_t__ u_int32_t ;
struct mmc_data {int dummy; } ;
struct cam_periph_map_info {scalar_t__ num_bufs_used; int ** orig; scalar_t__* bp; } ;
struct TYPE_15__ {scalar_t__ len; int data; } ;


 scalar_t__ CAM_DIR_IN ;
 scalar_t__ CAM_DIR_MASK ;
 scalar_t__ CAM_DIR_OUT ;
 int CAM_PERIPH_MAXMAPS ;
 int M_CAMPERIPH ;
 int PRELE (int ) ;
 int copyout (int *,int *,scalar_t__) ;
 int curproc ;
 int free (int *,int ) ;
 int pbuf_zone ;
 int uma_zfree (int ,scalar_t__) ;
 int vunmapbuf (scalar_t__) ;

void
cam_periph_unmapmem(union ccb *ccb, struct cam_periph_map_info *mapinfo)
{
 int numbufs, i;
 u_int8_t **data_ptrs[CAM_PERIPH_MAXMAPS];
 u_int32_t lengths[CAM_PERIPH_MAXMAPS];
 u_int32_t dirs[CAM_PERIPH_MAXMAPS];

 if (mapinfo->num_bufs_used <= 0) {

  return;
 }

 switch (ccb->ccb_h.func_code) {
 case 133:
  if (ccb->cdm.pattern_buf_len > 0) {
   data_ptrs[0] = (u_int8_t **)&ccb->cdm.patterns;
   lengths[0] = ccb->cdm.pattern_buf_len;
   dirs[0] = CAM_DIR_OUT;
   data_ptrs[1] = (u_int8_t **)&ccb->cdm.matches;
   lengths[1] = ccb->cdm.match_buf_len;
   dirs[1] = CAM_DIR_IN;
   numbufs = 2;
  } else {
   data_ptrs[0] = (u_int8_t **)&ccb->cdm.matches;
   lengths[0] = ccb->cdm.match_buf_len;
   dirs[0] = CAM_DIR_IN;
   numbufs = 1;
  }
  break;
 case 129:
 case 135:
  data_ptrs[0] = &ccb->csio.data_ptr;
  lengths[0] = ccb->csio.dxfer_len;
  dirs[0] = ccb->ccb_h.flags & CAM_DIR_MASK;
  numbufs = 1;
  break;
 case 136:
  data_ptrs[0] = &ccb->ataio.data_ptr;
  lengths[0] = ccb->ataio.dxfer_len;
  dirs[0] = ccb->ccb_h.flags & CAM_DIR_MASK;
  numbufs = 1;
  break;
 case 132:
  data_ptrs[0] = (u_int8_t **)&ccb->mmcio.cmd.data;
  lengths[0] = sizeof(struct mmc_data *);
  dirs[0] = ccb->ccb_h.flags & CAM_DIR_MASK;
  data_ptrs[1] = (u_int8_t **)&ccb->mmcio.cmd.data->data;
  lengths[1] = ccb->mmcio.cmd.data->len;
  dirs[1] = ccb->ccb_h.flags & CAM_DIR_MASK;
  numbufs = 2;
  break;
 case 128:
  data_ptrs[0] = &ccb->smpio.smp_request;
  lengths[0] = ccb->smpio.smp_request_len;
  dirs[0] = CAM_DIR_OUT;
  data_ptrs[1] = &ccb->smpio.smp_response;
  lengths[1] = ccb->smpio.smp_response_len;
  dirs[1] = CAM_DIR_IN;
  numbufs = 2;
  break;
 case 130:
 case 131:
  data_ptrs[0] = &ccb->nvmeio.data_ptr;
  lengths[0] = ccb->nvmeio.dxfer_len;
  dirs[0] = ccb->ccb_h.flags & CAM_DIR_MASK;
  numbufs = 1;
  break;
 case 134:
  data_ptrs[0] = (uint8_t **)&ccb->cdai.buf;
  lengths[0] = ccb->cdai.bufsiz;
  dirs[0] = CAM_DIR_IN;
  numbufs = 1;
  break;
 default:

  PRELE(curproc);
  return;
  break;
 }

 for (i = 0; i < numbufs; i++) {
  if (mapinfo->bp[i]) {

   vunmapbuf(mapinfo->bp[i]);


   uma_zfree(pbuf_zone, mapinfo->bp[i]);
  } else {
   if (dirs[i] != CAM_DIR_OUT) {
    copyout(*data_ptrs[i], mapinfo->orig[i],
        lengths[i]);
   }
   free(*data_ptrs[i], M_CAMPERIPH);
  }


  *data_ptrs[i] = mapinfo->orig[i];
 }


 PRELE(curproc);
}
