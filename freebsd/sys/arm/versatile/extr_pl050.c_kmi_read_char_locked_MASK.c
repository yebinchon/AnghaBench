#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct kmi_softc {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  kb_count; struct kmi_softc* kb_data; } ;
typedef  TYPE_1__ keyboard_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  KMIDATA ; 
 int /*<<< orphan*/  KMIIR ; 
 int KMIIR_RXINTR ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int NOKEY ; 
 int FUNC2 (struct kmi_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint32_t
FUNC3(keyboard_t *kbd, int wait)
{
	struct kmi_softc *sc = kbd->kb_data;
	uint32_t reg, data;

	FUNC1();

	if (!FUNC0(kbd))
		return (NOKEY);

	reg = FUNC2(sc, KMIIR);
	if (reg & KMIIR_RXINTR) {
		data = FUNC2(sc, KMIDATA);
		return (data);
	}

	++kbd->kb_count;
	return (NOKEY);
}