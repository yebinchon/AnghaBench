#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int uint32_t ;
struct efi_fb {int fb_height; int fb_width; int fb_addr; int fb_size; int fb_stride; } ;
typedef  int ssize_t ;
struct TYPE_5__ {int /*<<< orphan*/  (* GetMode ) (TYPE_1__*,int*,int*,int*,int*) ;} ;
typedef  TYPE_1__ EFI_UGA_DRAW_PROTOCOL ;
typedef  int /*<<< orphan*/  EFI_STATUS ;
typedef  int /*<<< orphan*/  EFI_PCI_IO_PROTOCOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PixelBlueGreenRedReserved8BitPerColor ; 
 int /*<<< orphan*/  FUNC1 (struct efi_fb*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int*,int*) ; 
 char* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 void* FUNC8 (char*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int*,int*,int*,int*) ; 

__attribute__((used)) static int
FUNC10(struct efi_fb *efifb, EFI_UGA_DRAW_PROTOCOL *uga)
{
	EFI_PCI_IO_PROTOCOL *pciio;
	char *ev, *p;
	EFI_STATUS status;
	ssize_t offset;
	uint64_t fbaddr;
	uint32_t horiz, vert, stride;
	uint32_t np, depth, refresh;

	status = uga->GetMode(uga, &horiz, &vert, &depth, &refresh);
	if (FUNC0(status))
		return (1);
	efifb->fb_height = vert;
	efifb->fb_width = horiz;
	/* Paranoia... */
	if (efifb->fb_height == 0 || efifb->fb_width == 0)
		return (1);

	/* The color masks are fixed AFAICT. */
	FUNC1(efifb, PixelBlueGreenRedReserved8BitPerColor,
	    NULL);

	/* pciio can be NULL on return! */
	pciio = FUNC3();

	/* Try to find the frame buffer. */
	status = FUNC4(pciio, &efifb->fb_addr,
	    &efifb->fb_size);
	if (FUNC0(status)) {
		efifb->fb_addr = 0;
		efifb->fb_size = 0;
	}

	/*
	 * There's no reliable way to detect the frame buffer or the
	 * offset within the frame buffer of the visible region, nor
	 * the stride. Our only option is to look at the system and
	 * fill in the blanks based on that. Luckily, UGA was mostly
	 * only used on Apple hardware.
	 */
	offset = -1;
	ev = FUNC5("smbios.system.maker");
	if (ev != NULL && !FUNC7(ev, "Apple Inc.")) {
		ev = FUNC5("smbios.system.product");
		if (ev != NULL && !FUNC7(ev, "iMac7,1")) {
			/* These are the expected values we should have. */
			horiz = 1680;
			vert = 1050;
			fbaddr = 0xc0000000;
			/* These are the missing bits. */
			offset = 0x10000;
			stride = 1728;
		} else if (ev != NULL && !FUNC7(ev, "MacBook3,1")) {
			/* These are the expected values we should have. */
			horiz = 1280;
			vert = 800;
			fbaddr = 0xc0000000;
			/* These are the missing bits. */
			offset = 0x0;
			stride = 2048;
		}
	}

	/*
	 * If this is hardware we know, make sure that it looks familiar
	 * before we accept our hardcoded values.
	 */
	if (offset >= 0 && efifb->fb_width == horiz &&
	    efifb->fb_height == vert && efifb->fb_addr == fbaddr) {
		efifb->fb_addr += offset;
		efifb->fb_size -= offset;
		efifb->fb_stride = stride;
		return (0);
	} else if (offset >= 0) {
		FUNC6("Hardware make/model known, but graphics not "
		    "as expected.\n");
		FUNC6("Console may not work!\n");
	}

	/*
	 * The stride is equal or larger to the width. Often it's the
	 * next larger power of two. We'll start with that...
	 */
	efifb->fb_stride = efifb->fb_width;
	do {
		np = efifb->fb_stride & (efifb->fb_stride - 1);
		if (np) {
			efifb->fb_stride |= (np - 1);
			efifb->fb_stride++;
		}
	} while (np);

	ev = FUNC5("hw.efifb.address");
	if (ev == NULL) {
		if (efifb->fb_addr == 0) {
			FUNC6("Please set hw.efifb.address and "
			    "hw.efifb.stride.\n");
			return (1);
		}

		/*
		 * The visible part of the frame buffer may not start at
		 * offset 0, so try to detect it. Note that we may not
		 * always be able to read from the frame buffer, which
		 * means that we may not be able to detect anything. In
		 * that case, we would take a long time scanning for a
		 * pixel change in the frame buffer, which would have it
		 * appear that we're hanging, so we limit the scan to
		 * 1/256th of the frame buffer. This number is mostly
		 * based on PR 202730 and the fact that on a MacBoook,
		 * where we can't read from the frame buffer the offset
		 * of the visible region is 0. In short: we want to scan
		 * enough to handle all adapters that have an offset
		 * larger than 0 and we want to scan as little as we can
		 * to not appear to hang when we can't read from the
		 * frame buffer.
		 */
		offset = FUNC2(uga, 0, pciio, efifb->fb_addr,
		    efifb->fb_size >> 8);
		if (offset == -1) {
			FUNC6("Unable to reliably detect frame buffer.\n");
		} else if (offset > 0) {
			efifb->fb_addr += offset;
			efifb->fb_size -= offset;
		}
	} else {
		offset = 0;
		efifb->fb_size = efifb->fb_height * efifb->fb_stride * 4;
		efifb->fb_addr = FUNC8(ev, &p, 0);
		if (*p != '\0')
			return (1);
	}

	ev = FUNC5("hw.efifb.stride");
	if (ev == NULL) {
		if (pciio != NULL && offset != -1) {
			/* Determine the stride. */
			offset = FUNC2(uga, 1, pciio,
			    efifb->fb_addr, horiz * 8);
			if (offset != -1)
				efifb->fb_stride = offset >> 2;
		} else {
			FUNC6("Unable to reliably detect the stride.\n");
		}
	} else {
		efifb->fb_stride = FUNC8(ev, &p, 0);
		if (*p != '\0')
			return (1);
	}

	/*
	 * We finalized on the stride, so recalculate the size of the
	 * frame buffer.
	 */
	efifb->fb_size = efifb->fb_height * efifb->fb_stride * 4;
	return (0);
}