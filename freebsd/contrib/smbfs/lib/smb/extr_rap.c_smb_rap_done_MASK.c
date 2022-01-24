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
struct smb_rap {struct smb_rap* r_sdata; struct smb_rap* r_sparam; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct smb_rap*) ; 

void
FUNC1(struct smb_rap *rap)
{
	if (rap->r_sparam)
		FUNC0(rap->r_sparam);
	if (rap->r_sdata)
		FUNC0(rap->r_sdata);
	FUNC0(rap);
}