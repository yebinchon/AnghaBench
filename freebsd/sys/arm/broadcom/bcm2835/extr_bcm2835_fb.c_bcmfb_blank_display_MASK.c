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
typedef  int /*<<< orphan*/  video_adapter_t ;
struct bcmsc_softc {int /*<<< orphan*/  fb_size; scalar_t__ fb_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(video_adapter_t *adp, int mode)
{

	struct bcmsc_softc *sc;

	sc = (struct bcmsc_softc *)adp;
	if (sc && sc->fb_addr)
		FUNC0((void*)sc->fb_addr, 0, sc->fb_size);

	return (0);
}