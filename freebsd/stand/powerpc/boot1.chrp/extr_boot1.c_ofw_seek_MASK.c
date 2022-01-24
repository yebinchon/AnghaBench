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
typedef  int uint64_t ;
typedef  int u_ofwh_t ;
typedef  int ofwh_t ;
typedef  int ofwcell_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 scalar_t__ FUNC2 (int*) ; 

__attribute__((used)) static int
FUNC3(ofwh_t devh, uint64_t off)
{
	ofwcell_t args[] = {
		(ofwcell_t)"seek",
		3,
		1,
		(u_ofwh_t)devh,
		off >> 32,
		off,
		0
	};

	if (FUNC0)(args)) {
		FUNC1("ofw_seek: devh=0x%x off=0x%lx\n", devh, off);
		return (1);
	}
	return (0);
}