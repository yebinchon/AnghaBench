#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint64_t ;
typedef  size_t u_int ;
typedef  int ssize_t ;
struct TYPE_15__ {int /*<<< orphan*/  (* Read ) (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,size_t,scalar_t__*) ;} ;
struct TYPE_18__ {TYPE_1__ Mem; } ;
struct TYPE_17__ {int /*<<< orphan*/  (* Blt ) (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,size_t,int,int,int /*<<< orphan*/ ) ;} ;
struct TYPE_16__ {scalar_t__ Reserved; int /*<<< orphan*/  Blue; int /*<<< orphan*/  Green; int /*<<< orphan*/  Red; } ;
typedef  TYPE_2__ EFI_UGA_PIXEL ;
typedef  TYPE_3__ EFI_UGA_DRAW_PROTOCOL ;
typedef  int /*<<< orphan*/  EFI_STATUS ;
typedef  TYPE_4__ EFI_PCI_IO_PROTOCOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EFI_PCI_IO_PASS_THROUGH_BAR ; 
 int /*<<< orphan*/  EfiPciIoWidthUint32 ; 
 int /*<<< orphan*/  EfiUgaBltBufferToVideo ; 
 int /*<<< orphan*/  EfiUgaVideoToBltBuffer ; 
 scalar_t__* FUNC2 (size_t,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 
 size_t FUNC4 (scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,size_t,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,size_t,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,size_t,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,size_t,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,size_t,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t
FUNC11(EFI_UGA_DRAW_PROTOCOL *uga, u_int line,
    EFI_PCI_IO_PROTOCOL *pciio, uint64_t addr, uint64_t size)
{
	EFI_UGA_PIXEL pix0, pix1;
	uint8_t *data1, *data2;
	size_t count, maxcount = 1024;
	ssize_t ofs;
	EFI_STATUS status;
	u_int idx;

	status = uga->Blt(uga, &pix0, EfiUgaVideoToBltBuffer,
	    0, line, 0, 0, 1, 1, 0);
	if (FUNC0(status)) {
		FUNC5("UGA BLT operation failed (video->buffer)");
		return (-1);
	}
	pix1.Red = ~pix0.Red;
	pix1.Green = ~pix0.Green;
	pix1.Blue = ~pix0.Blue;
	pix1.Reserved = 0;

	data1 = FUNC2(maxcount, 2);
	if (data1 == NULL) {
		FUNC5("Unable to allocate memory");
		return (-1);
	}
	data2 = data1 + maxcount;

	ofs = 0;
	while (size > 0) {
		count = FUNC4(size, maxcount);

		status = pciio->Mem.Read(pciio, EfiPciIoWidthUint32,
		    EFI_PCI_IO_PASS_THROUGH_BAR, addr + ofs, count >> 2,
		    data1);
		if (FUNC0(status)) {
			FUNC5("Error reading frame buffer (before)");
			goto fail;
		}
		status = uga->Blt(uga, &pix1, EfiUgaBltBufferToVideo,
		    0, 0, 0, line, 1, 1, 0);
		if (FUNC0(status)) {
			FUNC5("UGA BLT operation failed (modify)");
			goto fail;
		}
		status = pciio->Mem.Read(pciio, EfiPciIoWidthUint32,
		    EFI_PCI_IO_PASS_THROUGH_BAR, addr + ofs, count >> 2,
		    data2);
		if (FUNC0(status)) {
			FUNC5("Error reading frame buffer (after)");
			goto fail;
		}
		status = uga->Blt(uga, &pix0, EfiUgaBltBufferToVideo,
		    0, 0, 0, line, 1, 1, 0);
		if (FUNC0(status)) {
			FUNC5("UGA BLT operation failed (restore)");
			goto fail;
		}
		for (idx = 0; idx < count; idx++) {
			if (data1[idx] != data2[idx]) {
				FUNC3(data1);
				return (ofs + (idx & ~3));
			}
		}
		ofs += count;
		size -= count;
	}
	FUNC5("No change detected in frame buffer");

 fail:
	FUNC5(" -- error %lu\n", FUNC1(status));
	FUNC3(data1);
	return (-1);
}