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
typedef  int uint8_t ;
typedef  int uint32_t ;
struct libusb_transfer {int flags; int actual_length; int buffer; int /*<<< orphan*/  endpoint; } ;
struct libusb_super_transfer {int last_len; int rem_len; int curr_data; } ;
struct libusb20_transfer {int dummy; } ;

/* Variables and functions */
#define  LIBUSB20_TRANSFER_COMPLETED 129 
#define  LIBUSB20_TRANSFER_START 128 
 int /*<<< orphan*/  LIBUSB_TRANSFER_COMPLETED ; 
 int /*<<< orphan*/  LIBUSB_TRANSFER_ERROR ; 
 int LIBUSB_TRANSFER_SHORT_NOT_OK ; 
 int /*<<< orphan*/  FUNC0 (struct libusb20_transfer*,struct libusb_super_transfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct libusb20_transfer*) ; 
 int FUNC4 (struct libusb20_transfer*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct libusb20_transfer*) ; 
 int /*<<< orphan*/  FUNC6 (struct libusb20_transfer*) ; 
 struct libusb_super_transfer* FUNC7 (struct libusb20_transfer*) ; 
 int FUNC8 (struct libusb20_transfer*) ; 
 int /*<<< orphan*/  FUNC9 (struct libusb20_transfer*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct libusb20_transfer*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct libusb20_transfer*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct libusb20_transfer*) ; 

__attribute__((used)) static void
FUNC13(struct libusb20_transfer *pxfer)
{
	struct libusb_super_transfer *sxfer;
	struct libusb_transfer *uxfer;
	uint32_t max_bulk;
	uint32_t actlen;
	uint8_t status;
	uint8_t flags;

	status = FUNC8(pxfer);
	sxfer = FUNC7(pxfer);
	max_bulk = FUNC5(pxfer);
	actlen = FUNC3(pxfer);

	if (sxfer == NULL)
		return;			/* cancelled - nothing to do */

	uxfer = (struct libusb_transfer *)(
	    ((uint8_t *)sxfer) + sizeof(*sxfer));

	flags = uxfer->flags;

	switch (status) {
	case LIBUSB20_TRANSFER_COMPLETED:

		uxfer->actual_length += actlen;

		/* subtract length of SETUP packet, if any */
		actlen -= FUNC4(pxfer, 0);

		/* check for short packet */
		if (sxfer->last_len != actlen) {
			if (flags & LIBUSB_TRANSFER_SHORT_NOT_OK) {
				FUNC0(pxfer, sxfer, LIBUSB_TRANSFER_ERROR);
			} else {
				FUNC0(pxfer, sxfer, LIBUSB_TRANSFER_COMPLETED);
			}
			break;
		}
		/* check for end of data */
		if (sxfer->rem_len == 0) {
			FUNC0(pxfer, sxfer, LIBUSB_TRANSFER_COMPLETED);
			break;
		}
		/* FALLTHROUGH */

	case LIBUSB20_TRANSFER_START:
		if (max_bulk > sxfer->rem_len) {
			max_bulk = sxfer->rem_len;
		}
		/* setup new CONTROL transaction */
		if (status == LIBUSB20_TRANSFER_COMPLETED) {
			/* next fragment - don't send SETUP packet */
			FUNC10(pxfer, 0, 0);
		} else {
			/* first fragment - send SETUP packet */
			FUNC10(pxfer, 8, 0);
			FUNC9(pxfer, uxfer->buffer, 0);
		}

		if (max_bulk != 0) {
			FUNC10(pxfer, max_bulk, 1);
			FUNC9(pxfer, sxfer->curr_data, 1);
			FUNC11(pxfer, 2);
		} else {
			FUNC11(pxfer, 1);
		}

		/* update counters */
		sxfer->last_len = max_bulk;
		sxfer->curr_data += max_bulk;
		sxfer->rem_len -= max_bulk;

		FUNC12(pxfer);

		/* check if we can fork another USB transfer */
		if (sxfer->rem_len == 0)
			FUNC2(FUNC6(pxfer), uxfer->endpoint);
		break;

	default:
		FUNC0(pxfer, sxfer, FUNC1(status));
		break;
	}
}