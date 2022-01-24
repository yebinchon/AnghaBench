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
typedef  scalar_t__ uint32_t ;
struct ccp_softc {int dummy; } ;

/* Variables and functions */
 int CMD_Q_STATUS_INCR ; 
 scalar_t__ FUNC0 (struct ccp_softc*,scalar_t__) ; 

__attribute__((used)) static inline uint32_t
FUNC1(struct ccp_softc *sc, unsigned queue, uint32_t offset)
{
	/*
	 * Each queue gets its own 4kB register space.  Queue 0 is at 0x1000.
	 */
	return (FUNC0(sc, (CMD_Q_STATUS_INCR * (1 + queue)) + offset));
}