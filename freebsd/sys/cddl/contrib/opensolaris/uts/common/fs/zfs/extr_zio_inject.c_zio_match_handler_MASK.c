#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ zi_objset; scalar_t__ zi_object; scalar_t__ zi_type; scalar_t__ zi_freq; scalar_t__ zi_level; scalar_t__ zi_start; scalar_t__ zi_end; int zi_error; } ;
typedef  TYPE_1__ zinject_record_t ;
struct TYPE_6__ {scalar_t__ zb_objset; scalar_t__ zb_object; scalar_t__ zb_level; scalar_t__ zb_blkid; } ;
typedef  TYPE_2__ zbookmark_phys_t ;
typedef  scalar_t__ uint64_t ;
typedef  int boolean_t ;

/* Variables and functions */
 int B_FALSE ; 
 scalar_t__ DMU_META_DNODE_OBJECT ; 
 scalar_t__ DMU_META_OBJSET ; 
 scalar_t__ DMU_OT_NONE ; 
 scalar_t__ FUNC0 (int) ; 

__attribute__((used)) static boolean_t
FUNC1(zbookmark_phys_t *zb, uint64_t type,
    zinject_record_t *record, int error)
{
	/*
	 * Check for a match against the MOS, which is based on type
	 */
	if (zb->zb_objset == DMU_META_OBJSET &&
	    record->zi_objset == DMU_META_OBJSET &&
	    record->zi_object == DMU_META_DNODE_OBJECT) {
		if (record->zi_type == DMU_OT_NONE ||
		    type == record->zi_type)
			return (record->zi_freq == 0 ||
			    FUNC0(100) < record->zi_freq);
		else
			return (B_FALSE);
	}

	/*
	 * Check for an exact match.
	 */
	if (zb->zb_objset == record->zi_objset &&
	    zb->zb_object == record->zi_object &&
	    zb->zb_level == record->zi_level &&
	    zb->zb_blkid >= record->zi_start &&
	    zb->zb_blkid <= record->zi_end &&
	    error == record->zi_error)
		return (record->zi_freq == 0 ||
		    FUNC0(100) < record->zi_freq);

	return (B_FALSE);
}