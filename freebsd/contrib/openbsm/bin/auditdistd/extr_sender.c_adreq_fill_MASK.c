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
typedef  int uint64_t ;
struct adreq {int adr_cmd; size_t adr_datasize; unsigned char const* adr_data; scalar_t__ adr_seq; } ;

/* Variables and functions */
 size_t ADIST_BUF_SIZE ; 
#define  ADIST_CMD_APPEND 132 
#define  ADIST_CMD_CLOSE 131 
#define  ADIST_CMD_ERROR 130 
#define  ADIST_CMD_KEEPALIVE 129 
#define  ADIST_CMD_OPEN 128 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char const*,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char const*) ; 

__attribute__((used)) static void
FUNC4(struct adreq *adreq, uint8_t cmd, const unsigned char *data,
    size_t size)
{
	static uint64_t seq = 1;

	FUNC1(size <= ADIST_BUF_SIZE);

	switch (cmd) {
	case ADIST_CMD_OPEN:
	case ADIST_CMD_CLOSE:
		FUNC1(data != NULL && size == 0);
		size = FUNC3(data) + 1;
		break;
	case ADIST_CMD_APPEND:
		FUNC1(data != NULL && size > 0);
		break;
	case ADIST_CMD_KEEPALIVE:
	case ADIST_CMD_ERROR:
		FUNC1(data == NULL && size == 0);
		break;
	default:
		FUNC0("Invalid command (%hhu).", cmd);
	}

	adreq->adr_cmd = cmd;
	adreq->adr_seq = seq++;
	adreq->adr_datasize = size;
	/* Don't copy if data is already in out buffer. */
	if (data != NULL && data != adreq->adr_data)
		FUNC2(data, adreq->adr_data, size);
}