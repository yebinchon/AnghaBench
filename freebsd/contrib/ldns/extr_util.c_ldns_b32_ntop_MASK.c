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
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*,size_t,char*,size_t,int,int) ; 

int 
FUNC1(const uint8_t* src, size_t src_sz, char* dst, size_t dst_sz)
{
	return FUNC0(src, src_sz, dst, dst_sz, false, true);
}