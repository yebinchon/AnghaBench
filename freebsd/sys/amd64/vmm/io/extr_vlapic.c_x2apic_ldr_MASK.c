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
typedef  int uint32_t ;
struct vlapic {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct vlapic*) ; 

__attribute__((used)) static uint32_t
FUNC1(struct vlapic *vlapic)
{
	int apicid;
	uint32_t ldr;

	apicid = FUNC0(vlapic);
	ldr = 1 << (apicid & 0xf);
	ldr |= (apicid & 0xffff0) << 12;
	return (ldr);
}