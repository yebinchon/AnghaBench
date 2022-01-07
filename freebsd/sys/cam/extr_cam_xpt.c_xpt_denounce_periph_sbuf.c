
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uintmax_t ;
struct xpt_proto {TYPE_4__* ops; } ;
struct sbuf {int dummy; } ;
struct cam_periph {int unit_number; int periph_name; struct cam_path* path; } ;
struct cam_path {TYPE_6__* device; TYPE_3__* target; TYPE_2__* bus; } ;
struct TYPE_12__ {scalar_t__ serial_num_len; int serial_num; int protocol; scalar_t__ lun_id; } ;
struct TYPE_11__ {scalar_t__ announce_nosbuf; } ;
struct TYPE_10__ {int (* denounce_sbuf ) (TYPE_6__*,struct sbuf*) ;} ;
struct TYPE_9__ {int target_id; } ;
struct TYPE_8__ {int path_id; TYPE_1__* sim; } ;
struct TYPE_7__ {int bus_id; int unit_number; int sim_name; } ;


 int MA_OWNED ;
 int cam_periph_assert (struct cam_periph*,int ) ;
 int sbuf_printf (struct sbuf*,char*,...) ;
 int stub1 (TYPE_6__*,struct sbuf*) ;
 int xpt_denounce_periph (struct cam_periph*) ;
 struct xpt_proto* xpt_proto_find (int ) ;
 TYPE_5__ xsoftc ;

void
xpt_denounce_periph_sbuf(struct cam_periph *periph, struct sbuf *sb)
{
 struct cam_path *path = periph->path;
 struct xpt_proto *proto;

 cam_periph_assert(periph, MA_OWNED);


 if (xsoftc.announce_nosbuf != 0) {
  xpt_denounce_periph(periph);
  return;
 }
 proto = xpt_proto_find(path->device->protocol);
 if ((proto != ((void*)0)) && (proto->ops->denounce_sbuf == ((void*)0))) {
  xpt_denounce_periph(periph);
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
  proto->ops->denounce_sbuf(path->device, sb);
 else
  sbuf_printf(sb, "%s%d: Unknown protocol device %d\n",
      periph->periph_name, periph->unit_number,
      path->device->protocol);
 if (path->device->serial_num_len > 0)
  sbuf_printf(sb, " s/n %.60s", path->device->serial_num);
 sbuf_printf(sb, " detached\n");
}
