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
struct mv_ap806_sei_softc {int dummy; } ;
struct mv_ap806_sei_irqsrc {int dummy; } ;
struct intr_irqsrc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct mv_ap806_sei_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mv_ap806_sei_softc*,struct mv_ap806_sei_irqsrc*,int) ; 

__attribute__((used)) static void
FUNC2(device_t dev, struct intr_irqsrc *isrc)
{
	struct mv_ap806_sei_softc *sc;
	struct mv_ap806_sei_irqsrc *sisrc;

	sc = FUNC0(dev);
	sisrc = (struct mv_ap806_sei_irqsrc *)isrc;

	FUNC1(sc, sisrc, 1);
}