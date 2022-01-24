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
struct ifreq {int dummy; } ;
struct i2c_info {int fd; scalar_t__ error; struct ifreq* ifr; } ;
typedef  int /*<<< orphan*/  ii ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
#define  SFF_8024_ID_QSFP 130 
#define  SFF_8024_ID_QSFP28 129 
#define  SFF_8024_ID_QSFPPLUS 128 
 int /*<<< orphan*/  SFF_8472_BASE ; 
 int /*<<< orphan*/  SFF_8472_ID ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_info*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_info*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void
FUNC4(int s, struct ifreq *ifr, int verbose)
{
	struct i2c_info ii;
	uint8_t id_byte;

	/* Prepare necessary into pass to i2c reader */
	FUNC0(&ii, 0, sizeof(ii));
	ii.fd = s;
	ii.ifr = ifr;

	/*
	 * Try to read byte 0 from i2c:
	 * Both SFF-8472 and SFF-8436 use it as
	 * 'identification byte'.
	 * Stop reading status on zero as value - 
	 * this might happen in case of empty transceiver slot.
	 */
	id_byte = 0;
	FUNC3(&ii, SFF_8472_BASE, SFF_8472_ID, 1, (caddr_t)&id_byte);
	if (ii.error != 0 || id_byte == 0)
		return;

	switch (id_byte) {
	case SFF_8024_ID_QSFP:
	case SFF_8024_ID_QSFPPLUS:
	case SFF_8024_ID_QSFP28:
		FUNC1(&ii, verbose);
		break;
	default:
		FUNC2(&ii, verbose);
	}
}