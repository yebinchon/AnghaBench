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
typedef  int u8 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int const*,int*,int*) ; 
 int aes_block_size ; 
 int /*<<< orphan*/  FUNC1 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ,int) ; 

int FUNC3(const u8 *psk, u8 *ak, u8 *kdk)
{
	FUNC2(ak, 0, aes_block_size);
	if (FUNC0(psk, ak, ak))
		return -1;
	FUNC1(kdk, ak, aes_block_size);
	ak[aes_block_size - 1] ^= 0x01;
	kdk[aes_block_size - 1] ^= 0x02;
	if (FUNC0(psk, ak, ak) ||
	    FUNC0(psk, kdk, kdk))
		return -1;
	return 0;
}