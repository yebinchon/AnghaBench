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
typedef  int u_int ;
typedef  int ofwcell_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,void*,size_t) ; 
 scalar_t__ FUNC2 (int*) ; 

__attribute__((used)) static int
FUNC3(void *virt, size_t len, u_int align)
{
	ofwcell_t args[] = {
		(ofwcell_t)"claim",
		3,
		1,
		(ofwcell_t)virt,
		len,
		align,
		0,
		0
	};

	if (FUNC0)(args)) {
		FUNC1("ofw_claim: virt=%p len=%u\n", virt, len);
		return (1);
	}

	return (0);
}