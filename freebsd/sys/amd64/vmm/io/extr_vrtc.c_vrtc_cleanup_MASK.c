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
struct vrtc {int /*<<< orphan*/  callout; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_VRTC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct vrtc*,int /*<<< orphan*/ ) ; 

void
FUNC2(struct vrtc *vrtc)
{

	FUNC0(&vrtc->callout);
	FUNC1(vrtc, M_VRTC);
}