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
typedef  int uint32_t ;
struct fwohci_softc {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct fwohci_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct fwohci_softc*,int,int) ; 

void
FUNC2(struct fwohci_softc *sc)
{
	uint32_t stat;

	stat = FUNC0(sc);
	if (stat != 0xffffffff)
		FUNC1(sc, stat, 1);
}