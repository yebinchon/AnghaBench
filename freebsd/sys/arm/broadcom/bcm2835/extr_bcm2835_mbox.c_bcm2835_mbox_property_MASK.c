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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  void msg_set_power_state ;
struct bcm_mbox_softc {int /*<<< orphan*/  property_chan_lock; } ;
struct bcm2835_mbox_hdr {int dummy; } ;
typedef  int /*<<< orphan*/ * device_t ;
typedef  int /*<<< orphan*/  bus_dmamap_t ;
typedef  int /*<<< orphan*/  bus_dma_tag_t ;
typedef  scalar_t__ bus_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  BCM2835_MBOX_CHAN_PROP ; 
 int /*<<< orphan*/  BUS_DMASYNC_PREREAD ; 
 int /*<<< orphan*/  BUS_DMASYNC_PREWRITE ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,struct bcm2835_mbox_hdr*,size_t) ; 
 void* FUNC3 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bcm_mbox_softc* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (void*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

int
FUNC14(void *msg, size_t msg_size)
{
	struct bcm_mbox_softc *sc;
	struct msg_set_power_state *buf;
	bus_dma_tag_t msg_tag;
	bus_dmamap_t msg_map;
	bus_addr_t msg_phys;
	uint32_t reg;
	device_t mbox;
	int err;

	/* get mbox device */
	mbox = FUNC9(FUNC8("mbox"), 0);
	if (mbox == NULL)
		return (ENXIO);

	sc = FUNC10(mbox);
	FUNC12(&sc->property_chan_lock);

	/* Allocate memory for the message */
	buf = FUNC3(mbox, msg_size, &msg_tag, &msg_map,
	    &msg_phys);
	if (buf == NULL) {
		err = ENOMEM;
		goto out;
	}

	FUNC11(buf, msg, msg_size);

	FUNC5(msg_tag, msg_map,
	    BUS_DMASYNC_PREWRITE);

	FUNC1(mbox, BCM2835_MBOX_CHAN_PROP, (uint32_t)msg_phys);
	FUNC0(mbox, BCM2835_MBOX_CHAN_PROP, &reg);

	FUNC5(msg_tag, msg_map,
	    BUS_DMASYNC_PREREAD);

	FUNC11(msg, buf, msg_size);

	err = FUNC2(mbox, msg_phys, reg,
	    (struct bcm2835_mbox_hdr *)msg, msg_size);

	FUNC6(msg_tag, msg_map);
	FUNC7(msg_tag, buf, msg_map);
	FUNC4(msg_tag);
out:
	FUNC13(&sc->property_chan_lock);
	return (err);
}