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
typedef  int uint16_t ;
struct vmmdev_softc {int /*<<< orphan*/  vm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vmmdev_softc*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct vmmdev_softc *sc)
{
	int vcpu;
	uint16_t maxcpus;

	maxcpus = FUNC1(sc->vm);
	for (vcpu = 0; vcpu < maxcpus; vcpu++)
		FUNC0(sc, vcpu);
}