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
typedef  int /*<<< orphan*/  u_char ;
struct ofw_mapping2 {int va; int len; int pa_lo; int mode; } ;
struct ofw_mapping {int va; int len; int pa; int mode; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  mappings ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  mmu ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int,int,int,int,int,int) ; 

void
FUNC8(int acells)
{
	struct		ofw_mapping *mapptr;
	struct		ofw_mapping2 *mapptr2;
        phandle_t	mmup;
        int		nmapping, i;
        u_char		mappings[256 * sizeof(struct ofw_mapping2)];
        char		lbuf[80];

	mmup = FUNC1(mmu);

	FUNC2(mappings, sizeof(mappings));

	nmapping = FUNC0(mmup, "translations", mappings, sizeof(mappings));
	if (nmapping == -1) {
		FUNC6("Could not get memory map (%d)\n",
		    nmapping);
		return;
	}

	FUNC4();
	if (acells == 1) {
		nmapping /= sizeof(struct ofw_mapping);
		mapptr = (struct ofw_mapping *) mappings;

		FUNC6("%17s\t%17s\t%8s\t%6s\n", "Virtual Range",
		    "Physical Range", "#Pages", "Mode");

		for (i = 0; i < nmapping; i++) {
			FUNC7(lbuf, "%08x-%08x\t%08x-%08x\t%8d\t%6x\n",
				mapptr[i].va,
				mapptr[i].va + mapptr[i].len,
				mapptr[i].pa,
				mapptr[i].pa + mapptr[i].len,
				mapptr[i].len / 0x1000,
				mapptr[i].mode);
			if (FUNC5(lbuf))
				break;
		}
	} else {
		nmapping /= sizeof(struct ofw_mapping2);
		mapptr2 = (struct ofw_mapping2 *) mappings;

		FUNC6("%17s\t%17s\t%8s\t%6s\n", "Virtual Range",
		       "Physical Range", "#Pages", "Mode");

		for (i = 0; i < nmapping; i++) {
			FUNC7(lbuf, "%08x-%08x\t%08x-%08x\t%8d\t%6x\n",
				mapptr2[i].va,
				mapptr2[i].va + mapptr2[i].len,
				mapptr2[i].pa_lo,
				mapptr2[i].pa_lo + mapptr2[i].len,
				mapptr2[i].len / 0x1000,
				mapptr2[i].mode);
			if (FUNC5(lbuf))
				break;
		}
	}
	FUNC3();
}