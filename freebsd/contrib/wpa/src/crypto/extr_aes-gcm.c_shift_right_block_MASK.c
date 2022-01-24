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
typedef  int u32 ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 

__attribute__((used)) static void FUNC2(u8 *v)
{
	u32 val;

	val = FUNC0(v + 12);
	val >>= 1;
	if (v[11] & 0x01)
		val |= 0x80000000;
	FUNC1(v + 12, val);

	val = FUNC0(v + 8);
	val >>= 1;
	if (v[7] & 0x01)
		val |= 0x80000000;
	FUNC1(v + 8, val);

	val = FUNC0(v + 4);
	val >>= 1;
	if (v[3] & 0x01)
		val |= 0x80000000;
	FUNC1(v + 4, val);

	val = FUNC0(v);
	val >>= 1;
	FUNC1(v, val);
}