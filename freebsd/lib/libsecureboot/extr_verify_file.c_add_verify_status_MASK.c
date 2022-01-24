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
struct verify_status {int vs_status; int /*<<< orphan*/  vs_ino; int /*<<< orphan*/  vs_dev; struct verify_status* vs_next; } ;
struct stat {int /*<<< orphan*/  st_ino; int /*<<< orphan*/  st_dev; } ;

/* Variables and functions */
 struct verify_status* FUNC0 (int) ; 
 struct verify_status* verified_files ; 

void
FUNC1(struct stat *stp, int status)
{
	struct verify_status *vsp;

	vsp = FUNC0(sizeof(struct verify_status));
	vsp->vs_next = verified_files;
	vsp->vs_dev = stp->st_dev;
	vsp->vs_ino = stp->st_ino;
	vsp->vs_status = status;
	verified_files = vsp;
}