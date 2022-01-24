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
typedef  int uintmax_t ;
struct adreq {scalar_t__ adr_byteorder; scalar_t__ adr_datasize; int adr_cmd; int /*<<< orphan*/  adr_seq; } ;

/* Variables and functions */
 scalar_t__ ADIST_BUF_SIZE ; 
 scalar_t__ ADIST_BYTEORDER ; 
#define  ADIST_CMD_APPEND 132 
#define  ADIST_CMD_CLOSE 131 
#define  ADIST_CMD_ERROR 130 
#define  ADIST_CMD_KEEPALIVE 129 
#define  ADIST_CMD_OPEN 128 
 int /*<<< orphan*/  EX_PROTOCOL ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC3(struct adreq *adreq)
{

	/* Byte-swap only if the sender is using different byte order. */
	if (adreq->adr_byteorder != ADIST_BYTEORDER) {
		adreq->adr_byteorder = ADIST_BYTEORDER;
		adreq->adr_seq = FUNC1(adreq->adr_seq);
		adreq->adr_datasize = FUNC0(adreq->adr_datasize);
	}

	/* Validate packet header. */

	if (adreq->adr_datasize > ADIST_BUF_SIZE) {
		FUNC2(EX_PROTOCOL, "Invalid datasize received (%ju).",
		    (uintmax_t)adreq->adr_datasize);
	}

	switch (adreq->adr_cmd) {
	case ADIST_CMD_OPEN:
	case ADIST_CMD_APPEND:
	case ADIST_CMD_CLOSE:
		if (adreq->adr_datasize == 0) {
			FUNC2(EX_PROTOCOL,
			    "Invalid datasize received (%ju).",
			    (uintmax_t)adreq->adr_datasize);
		}
		break;
	case ADIST_CMD_KEEPALIVE:
	case ADIST_CMD_ERROR:
		if (adreq->adr_datasize > 0) {
			FUNC2(EX_PROTOCOL,
			    "Invalid datasize received (%ju).",
			    (uintmax_t)adreq->adr_datasize);
		}
		break;
	default:
		FUNC2(EX_PROTOCOL, "Invalid command received (%hhu).",
		    adreq->adr_cmd);
	}
}