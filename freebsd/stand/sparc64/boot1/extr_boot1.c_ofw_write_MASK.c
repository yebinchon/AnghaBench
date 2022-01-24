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
typedef  int u_ofwh_t ;
typedef  int ofwh_t ;
typedef  int ofwcell_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,void const*,size_t) ; 
 scalar_t__ FUNC2 (int*) ; 

__attribute__((used)) static int
FUNC3(ofwh_t devh, const void *buf, size_t len)
{
	ofwcell_t args[] = {
		(ofwcell_t)"write",
		3,
		1,
		(u_ofwh_t)devh,
		(ofwcell_t)buf,
		len,
		0
	};

	if (FUNC0)(args)) {
		FUNC1("ofw_write: devh=0x%x buf=%p len=%u\n", devh, buf, len);
		return (1);
	}
	return (0);
}