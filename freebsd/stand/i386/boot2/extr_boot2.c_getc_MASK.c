#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int addr; int eax; int /*<<< orphan*/  efl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__ v86 ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static int
FUNC2(int fn)
{

	v86.addr = 0x16;
	v86.eax = fn << 8;
	FUNC1();
	return (fn == 0 ? v86.eax & 0xff : !FUNC0(v86.efl));
}