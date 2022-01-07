
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uintmax_t ;
struct xpt_proto {TYPE_3__* ops; } ;
struct sbuf {int dummy; } ;
struct cam_periph {int unit_number; int periph_name; int flags; struct cam_path* path; } ;
struct cam_path {TYPE_8__* device; TYPE_6__* bus; TYPE_2__* target; } ;
struct TYPE_16__ {char* protocol; scalar_t__ serial_num_len; char* serial_num; int inq_flags; int flags; scalar_t__ lun_id; } ;
struct TYPE_15__ {scalar_t__ announce_nosbuf; } ;
struct TYPE_14__ {TYPE_5__* xport; int path_id; TYPE_1__* sim; } ;
struct TYPE_13__ {TYPE_4__* ops; } ;
struct TYPE_12__ {int (* announce_sbuf ) (struct cam_periph*,struct sbuf*) ;} ;
struct TYPE_11__ {int (* announce_sbuf ) (TYPE_8__*,struct sbuf*) ;} ;
struct TYPE_10__ {int target_id; } ;
struct TYPE_9__ {int bus_id; int unit_number; int sim_name; } ;


 int CAM_DEV_TAG_AFTER_COUNT ;
 int CAM_PERIPH_ANNOUNCED ;
 int MA_OWNED ;
 int SID_CmdQue ;
 int cam_periph_assert (struct cam_periph*,int ) ;
 int sbuf_printf (struct sbuf*,char*,int ,int ,...) ;
 int stub1 (TYPE_8__*,struct sbuf*) ;
 int stub2 (struct cam_periph*,struct sbuf*) ;
 int xpt_announce_periph (struct cam_periph*,char*) ;
 struct xpt_proto* xpt_proto_find (char*) ;
 TYPE_7__ xsoftc ;

void
xpt_announce_periph_sbuf(struct cam_periph *periph, struct sbuf *sb,
    char *announce_string)
{
 struct cam_path *path = periph->path;
 struct xpt_proto *proto;

 cam_periph_assert(periph, MA_OWNED);
 periph->flags |= CAM_PERIPH_ANNOUNCED;


 if (xsoftc.announce_nosbuf != 0) {
  xpt_announce_periph(periph, announce_string);
  return;
 }
 proto = xpt_proto_find(path->device->protocol);
 if (((proto != ((void*)0)) && (proto->ops->announce_sbuf == ((void*)0))) ||
     (path->bus->xport->ops->announce_sbuf == ((void*)0))) {
  xpt_announce_periph(periph, announce_string);
  return;
 }

 sbuf_printf(sb, "%s%d at %s%d bus %d scbus%d target %d lun %jx\n",
     periph->periph_name, periph->unit_number,
     path->bus->sim->sim_name,
     path->bus->sim->unit_number,
     path->bus->sim->bus_id,
     path->bus->path_id,
     path->target->target_id,
     (uintmax_t)path->device->lun_id);
 sbuf_printf(sb, "%s%d: ", periph->periph_name, periph->unit_number);

 if (proto)
  proto->ops->announce_sbuf(path->device, sb);
 else
  sbuf_printf(sb, "%s%d: Unknown protocol device %d\n",
      periph->periph_name, periph->unit_number,
      path->device->protocol);
 if (path->device->serial_num_len > 0) {

  sbuf_printf(sb, "%s%d: Serial Number %.60s\n",
      periph->periph_name, periph->unit_number,
      path->device->serial_num);
 }

 path->bus->xport->ops->announce_sbuf(periph, sb);

 if (path->device->inq_flags & SID_CmdQue
  || path->device->flags & CAM_DEV_TAG_AFTER_COUNT) {
  sbuf_printf(sb, "%s%d: Command Queueing enabled\n",
      periph->periph_name, periph->unit_number);
 }

 if (announce_string != ((void*)0))
  sbuf_printf(sb, "%s%d: %s\n", periph->periph_name,
      periph->unit_number, announce_string);
}
