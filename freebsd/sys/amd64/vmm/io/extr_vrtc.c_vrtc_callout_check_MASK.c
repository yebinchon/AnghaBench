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
typedef  scalar_t__ sbintime_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static __inline void
FUNC2(struct vrtc *vrtc, sbintime_t freq)
{
	int active;

	active = FUNC1(&vrtc->callout) ? 1 : 0;
	FUNC0((freq == 0 && !active) || (freq != 0 && active),
	    ("vrtc callout %s with frequency %#lx",
	    active ? "active" : "inactive", freq));
}