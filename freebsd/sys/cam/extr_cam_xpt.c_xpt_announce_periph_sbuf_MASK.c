#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uintmax_t ;
struct xpt_proto {TYPE_3__* ops; } ;
struct sbuf {int dummy; } ;
struct cam_periph {int /*<<< orphan*/  unit_number; int /*<<< orphan*/  periph_name; int /*<<< orphan*/  flags; struct cam_path* path; } ;
struct cam_path {TYPE_8__* device; TYPE_6__* bus; TYPE_2__* target; } ;
struct TYPE_16__ {char* protocol; scalar_t__ serial_num_len; char* serial_num; int inq_flags; int flags; scalar_t__ lun_id; } ;
struct TYPE_15__ {scalar_t__ announce_nosbuf; } ;
struct TYPE_14__ {TYPE_5__* xport; int /*<<< orphan*/  path_id; TYPE_1__* sim; } ;
struct TYPE_13__ {TYPE_4__* ops; } ;
struct TYPE_12__ {int /*<<< orphan*/  (* announce_sbuf ) (struct cam_periph*,struct sbuf*) ;} ;
struct TYPE_11__ {int /*<<< orphan*/  (* announce_sbuf ) (TYPE_8__*,struct sbuf*) ;} ;
struct TYPE_10__ {int /*<<< orphan*/  target_id; } ;
struct TYPE_9__ {int /*<<< orphan*/  bus_id; int /*<<< orphan*/  unit_number; int /*<<< orphan*/  sim_name; } ;

/* Variables and functions */
 int CAM_DEV_TAG_AFTER_COUNT ; 
 int /*<<< orphan*/  CAM_PERIPH_ANNOUNCED ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int SID_CmdQue ; 
 int /*<<< orphan*/  FUNC0 (struct cam_periph*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sbuf*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_8__*,struct sbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct cam_periph*,struct sbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct cam_periph*,char*) ; 
 struct xpt_proto* FUNC5 (char*) ; 
 TYPE_7__ xsoftc ; 

void
FUNC6(struct cam_periph *periph, struct sbuf *sb,
    char *announce_string)
{
	struct	cam_path *path = periph->path;
	struct  xpt_proto *proto;

	FUNC0(periph, MA_OWNED);
	periph->flags |= CAM_PERIPH_ANNOUNCED;

	/* Fall back to the non-sbuf method if necessary */
	if (xsoftc.announce_nosbuf != 0) {
		FUNC4(periph, announce_string);
		return;
	}
	proto = FUNC5(path->device->protocol);
	if (((proto != NULL) && (proto->ops->announce_sbuf == NULL)) ||
	    (path->bus->xport->ops->announce_sbuf == NULL)) {
		FUNC4(periph, announce_string);
		return;
	}

	FUNC1(sb, "%s%d at %s%d bus %d scbus%d target %d lun %jx\n",
	    periph->periph_name, periph->unit_number,
	    path->bus->sim->sim_name,
	    path->bus->sim->unit_number,
	    path->bus->sim->bus_id,
	    path->bus->path_id,
	    path->target->target_id,
	    (uintmax_t)path->device->lun_id);
	FUNC1(sb, "%s%d: ", periph->periph_name, periph->unit_number);

	if (proto)
		proto->ops->announce_sbuf(path->device, sb);
	else
		FUNC1(sb, "%s%d: Unknown protocol device %d\n",
		    periph->periph_name, periph->unit_number,
		    path->device->protocol);
	if (path->device->serial_num_len > 0) {
		/* Don't wrap the screen  - print only the first 60 chars */
		FUNC1(sb, "%s%d: Serial Number %.60s\n",
		    periph->periph_name, periph->unit_number,
		    path->device->serial_num);
	}
	/* Announce transport details. */
	path->bus->xport->ops->announce_sbuf(periph, sb);
	/* Announce command queueing. */
	if (path->device->inq_flags & SID_CmdQue
	 || path->device->flags & CAM_DEV_TAG_AFTER_COUNT) {
		FUNC1(sb, "%s%d: Command Queueing enabled\n",
		    periph->periph_name, periph->unit_number);
	}
	/* Announce caller's details if they've passed in. */
	if (announce_string != NULL)
		FUNC1(sb, "%s%d: %s\n", periph->periph_name,
		    periph->unit_number, announce_string);
}