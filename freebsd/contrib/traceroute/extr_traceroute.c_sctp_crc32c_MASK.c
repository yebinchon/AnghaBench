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
typedef  int u_int8_t ;
typedef  size_t u_int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t,int const) ; 
 size_t FUNC1 (size_t) ; 

u_int32_t
FUNC2(const void *packet, u_int32_t len)
{
	u_int32_t i, crc32c;
	u_int8_t byte0, byte1, byte2, byte3;
	const u_int8_t *buf = (const u_int8_t *)packet;

	crc32c = ~0;
	for (i = 0; i < len; i++)
		FUNC0(crc32c, buf[i]);
	crc32c = ~crc32c;
	byte0  = crc32c & 0xff;
	byte1  = (crc32c>>8) & 0xff;
	byte2  = (crc32c>>16) & 0xff;
	byte3  = (crc32c>>24) & 0xff;
	crc32c = ((byte0 << 24) | (byte1 << 16) | (byte2 << 8) | byte3);
	return FUNC1(crc32c);
}