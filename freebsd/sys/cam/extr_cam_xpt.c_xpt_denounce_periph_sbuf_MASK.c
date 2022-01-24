#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uintmax_t ;
struct xpt_proto {TYPE_4__* ops; } ;
struct sbuf {int dummy; } ;
struct cam_periph {int /*<<< orphan*/  unit_number; int /*<<< orphan*/  periph_name; struct cam_path* path; } ;
struct cam_path {TYPE_6__* device; TYPE_3__* target; TYPE_2__* bus; } ;
struct TYPE_12__ {scalar_t__ serial_num_len; int /*<<< orphan*/  serial_num; int /*<<< orphan*/  protocol; scalar_t__ lun_id; } ;
struct TYPE_11__ {scalar_t__ announce_nosbuf; } ;
struct TYPE_10__ {int /*<<< orphan*/  (* denounce_sbuf ) (TYPE_6__*,struct sbuf*) ;} ;
struct TYPE_9__ {int /*<<< orphan*/  target_id; } ;
struct TYPE_8__ {int /*<<< orphan*/  path_id; TYPE_1__* sim; } ;
struct TYPE_7__ {int /*<<< orphan*/  bus_id; int /*<<< orphan*/  unit_number; int /*<<< orphan*/  sim_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (struct cam_periph*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sbuf*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,struct sbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct cam_periph*) ; 
 struct xpt_proto* FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_5__ xsoftc ; 

void
FUNC5(struct cam_periph *periph, struct sbuf *sb)
{
	struct cam_path *path = periph->path;
	struct xpt_proto *proto;

	FUNC0(periph, MA_OWNED);

	/* Fall back to the non-sbuf method if necessary */
	if (xsoftc.announce_nosbuf != 0) {
		FUNC3(periph);
		return;
	}
	proto = FUNC4(path->device->protocol);
	if ((proto != NULL) && (proto->ops->denounce_sbuf == NULL)) {
		FUNC3(periph);
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
		proto->ops->denounce_sbuf(path->device, sb);
	else
		FUNC1(sb, "%s%d: Unknown protocol device %d\n",
		    periph->periph_name, periph->unit_number,
		    path->device->protocol);
	if (path->device->serial_num_len > 0)
		FUNC1(sb, " s/n %.60s", path->device->serial_num);
	FUNC1(sb, " detached\n");
}