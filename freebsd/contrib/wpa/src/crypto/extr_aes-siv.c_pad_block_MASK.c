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
 size_t AES_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int*,int const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static void FUNC2(u8 *pad, const u8 *addr, size_t len)
{
	FUNC1(pad, 0, AES_BLOCK_SIZE);
	FUNC0(pad, addr, len);

	if (len < AES_BLOCK_SIZE)
		pad[len] = 0x80;
}