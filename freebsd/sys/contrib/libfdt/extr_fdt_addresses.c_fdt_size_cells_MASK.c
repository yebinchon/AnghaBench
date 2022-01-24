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
typedef  int /*<<< orphan*/  fdt32_t ;

/* Variables and functions */
 int FDT_ERR_BADNCELLS ; 
 int FDT_MAX_NCELLS ; 
 int FUNC0 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/ * FUNC1 (void const*,int,char*,int*) ; 

int FUNC2(const void *fdt, int nodeoffset)
{
	const fdt32_t *sc;
	int val;
	int len;

	sc = FUNC1(fdt, nodeoffset, "#size-cells", &len);
	if (!sc)
		return 2;

	if (len != sizeof(*sc))
		return -FDT_ERR_BADNCELLS;

	val = FUNC0(*sc);
	if ((val < 0) || (val > FDT_MAX_NCELLS))
		return -FDT_ERR_BADNCELLS;

	return val;
}