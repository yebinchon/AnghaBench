#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ zprop_source_t ;
struct libbe_dccb {int /*<<< orphan*/  props; int /*<<< orphan*/  lbh; int /*<<< orphan*/  zhp; } ;
typedef  int /*<<< orphan*/  source ;
typedef  int /*<<< orphan*/  pval ;

/* Variables and functions */
 int BE_MAXPATHLEN ; 
 int ZFS_PROP_CANMOUNT ; 
 int ZFS_PROP_MOUNTPOINT ; 
 int ZPROP_CONT ; 
 scalar_t__ ZPROP_SRC_LOCAL ; 
 scalar_t__ ZPROP_SRC_RECEIVED ; 
 char* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,char*,int,scalar_t__*,char*,int,int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int
FUNC5(int prop, void *cb)
{
	int err;
        struct libbe_dccb *dccb;
	zprop_source_t src;
	char pval[BE_MAXPATHLEN];
	char source[BE_MAXPATHLEN];
	char *val;

	dccb = cb;
	/* Skip some properties we don't want to touch */
	if (prop == ZFS_PROP_CANMOUNT)
		return (ZPROP_CONT);

	/* Don't copy readonly properties */
	if (FUNC3(prop))
		return (ZPROP_CONT);

	if ((err = FUNC2(dccb->zhp, prop, (char *)&pval,
	    sizeof(pval), &src, (char *)&source, sizeof(source), false)))
		/* Just continue if we fail to read a property */
		return (ZPROP_CONT);

	/*
	 * Only copy locally defined or received properties.  This continues
	 * to avoid temporary/default/local properties intentionally without
	 * breaking received datasets.
	 */
	if (src != ZPROP_SRC_LOCAL && src != ZPROP_SRC_RECEIVED)
		return (ZPROP_CONT);

	/* Augment mountpoint with altroot, if needed */
	val = pval;
	if (prop == ZFS_PROP_MOUNTPOINT)
		val = FUNC0(dccb->lbh, val);

	FUNC1(dccb->props, FUNC4(prop), val);

	return (ZPROP_CONT);
}