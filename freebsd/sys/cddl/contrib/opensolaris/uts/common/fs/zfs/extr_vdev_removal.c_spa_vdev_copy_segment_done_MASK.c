#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  io_spa; TYPE_2__* io_private; } ;
typedef  TYPE_1__ zio_t ;
struct TYPE_7__ {int /*<<< orphan*/  vcsa_obsolete_segs; } ;
typedef  TYPE_2__ vdev_copy_segment_arg_t ;

/* Variables and functions */
 int /*<<< orphan*/  SCL_STATE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  unalloc_seg ; 

__attribute__((used)) static void
FUNC4(zio_t *zio)
{
	vdev_copy_segment_arg_t *vcsa = zio->io_private;

	FUNC2(vcsa->vcsa_obsolete_segs,
	    unalloc_seg, vcsa);
	FUNC1(vcsa->vcsa_obsolete_segs);
	FUNC0(vcsa, sizeof (*vcsa));

	FUNC3(zio->io_spa, SCL_STATE, zio->io_spa);
}