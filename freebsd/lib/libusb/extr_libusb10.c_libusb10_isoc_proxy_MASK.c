#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  size_t uint32_t ;
typedef  scalar_t__ uint16_t ;
struct libusb_transfer {scalar_t__ num_iso_packets; size_t actual_length; int /*<<< orphan*/  endpoint; TYPE_1__* iso_packet_desc; int /*<<< orphan*/ * buffer; } ;
struct libusb_super_transfer {int /*<<< orphan*/  rem_len; } ;
struct libusb20_transfer {int dummy; } ;
struct TYPE_2__ {size_t length; int /*<<< orphan*/  actual_length; } ;

/* Variables and functions */
#define  LIBUSB20_TRANSFER_COMPLETED 129 
#define  LIBUSB20_TRANSFER_START 128 
 int /*<<< orphan*/  LIBUSB_TRANSFER_COMPLETED ; 
 int /*<<< orphan*/  FUNC0 (struct libusb20_transfer*,struct libusb_super_transfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC3 (struct libusb20_transfer*) ; 
 int /*<<< orphan*/  FUNC4 (struct libusb20_transfer*,scalar_t__) ; 
 scalar_t__ FUNC5 (struct libusb20_transfer*) ; 
 int /*<<< orphan*/  FUNC6 (struct libusb20_transfer*) ; 
 struct libusb_super_transfer* FUNC7 (struct libusb20_transfer*) ; 
 int FUNC8 (struct libusb20_transfer*) ; 
 int /*<<< orphan*/  FUNC9 (struct libusb20_transfer*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct libusb20_transfer*,int /*<<< orphan*/ *,size_t,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct libusb20_transfer*) ; 

__attribute__((used)) static void
FUNC12(struct libusb20_transfer *pxfer)
{
	struct libusb_super_transfer *sxfer;
	struct libusb_transfer *uxfer;
	uint32_t actlen;
	uint16_t iso_packets;
	uint16_t i;
	uint8_t status;

	status = FUNC8(pxfer);
	sxfer = FUNC7(pxfer);
	actlen = FUNC3(pxfer);
	iso_packets = FUNC5(pxfer);

	if (sxfer == NULL)
		return; /* cancelled - nothing to do */

	uxfer = (struct libusb_transfer *)(
	    ((uint8_t *)sxfer) + sizeof(*sxfer));

	if (iso_packets > uxfer->num_iso_packets)
		iso_packets = uxfer->num_iso_packets;

	if (iso_packets == 0)
		return; /* nothing to do */

	/* make sure that the number of ISOCHRONOUS packets is valid */
	uxfer->num_iso_packets = iso_packets;

	switch (status) {
	case LIBUSB20_TRANSFER_COMPLETED:
		/* update actual length */
		uxfer->actual_length = actlen;
		for (i = 0; i != iso_packets; i++) {
			uxfer->iso_packet_desc[i].actual_length =
			    FUNC4(pxfer, i);
		}
		FUNC0(pxfer, sxfer, LIBUSB_TRANSFER_COMPLETED);
		break;
	case LIBUSB20_TRANSFER_START:
		/* setup length(s) */
		actlen = 0;
		for (i = 0; i != iso_packets; i++) {
			FUNC10(pxfer,
			    &uxfer->buffer[actlen],
			    uxfer->iso_packet_desc[i].length, i);
			actlen += uxfer->iso_packet_desc[i].length;
		}

		/* no remainder */
		sxfer->rem_len = 0;

		FUNC9(pxfer, iso_packets);
		FUNC11(pxfer);

		/* fork another USB transfer, if any */
		FUNC2(FUNC6(pxfer), uxfer->endpoint);
		break;
	default:
		FUNC0(pxfer, sxfer, FUNC1(status));
		break;
	}
}