#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* z_ctldir; } ;
typedef  TYPE_2__ zfsvfs_t ;
typedef  int /*<<< orphan*/  sfs_node_t ;
struct TYPE_4__ {int /*<<< orphan*/ * snapdir; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void
FUNC1(zfsvfs_t *zfsvfs)
{
	FUNC0(zfsvfs->z_ctldir->snapdir);
	FUNC0((sfs_node_t *)zfsvfs->z_ctldir);
	zfsvfs->z_ctldir = NULL;
}