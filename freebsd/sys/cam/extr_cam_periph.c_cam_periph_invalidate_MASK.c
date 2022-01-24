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
struct sbuf {int dummy; } ;
struct cam_periph {int flags; int /*<<< orphan*/  (* periph_oninval ) (struct cam_periph*) ;int /*<<< orphan*/  path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  CAM_DEBUG_INFO ; 
 int CAM_PERIPH_ANNOUNCED ; 
 int CAM_PERIPH_INVALID ; 
 int CAM_PERIPH_NEW_DEV_FOUND ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  SBUF_FIXEDLEN ; 
 int /*<<< orphan*/  FUNC1 (struct cam_periph*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cam_periph*) ; 
 int /*<<< orphan*/  rebooting ; 
 int /*<<< orphan*/  FUNC3 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct sbuf*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct cam_periph*) ; 
 int /*<<< orphan*/  FUNC7 (struct cam_periph*,struct sbuf*) ; 

void
FUNC8(struct cam_periph *periph)
{

	FUNC1(periph, MA_OWNED);
	/*
	 * We only call this routine the first time a peripheral is
	 * invalidated.
	 */
	if ((periph->flags & CAM_PERIPH_INVALID) != 0)
		return;

	FUNC0(periph->path, CAM_DEBUG_INFO, ("Periph invalidated\n"));
	if ((periph->flags & CAM_PERIPH_ANNOUNCED) && !rebooting) {
		struct sbuf sb;
		char buffer[160];

		FUNC4(&sb, buffer, 160, SBUF_FIXEDLEN);
		FUNC7(periph, &sb);
		FUNC3(&sb);
		FUNC5(&sb);
	}
	periph->flags |= CAM_PERIPH_INVALID;
	periph->flags &= ~CAM_PERIPH_NEW_DEV_FOUND;
	if (periph->periph_oninval != NULL)
		periph->periph_oninval(periph);
	FUNC2(periph);
}