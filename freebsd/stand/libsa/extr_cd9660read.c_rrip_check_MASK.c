#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct iso_directory_record {char* name; int /*<<< orphan*/  length; int /*<<< orphan*/  name_len; } ;
struct TYPE_3__ {int /*<<< orphan*/  length; int /*<<< orphan*/  type; } ;
struct TYPE_4__ {int* signature; int /*<<< orphan*/  len_skp; TYPE_1__ h; } ;
typedef  TYPE_2__ ISO_SUSP_PRESENT ;
typedef  int /*<<< orphan*/  ISO_RRIP_EXTREF ;

/* Variables and functions */
 int /*<<< orphan*/  SUSP_EXTREF ; 
 int /*<<< orphan*/  SUSP_PRESENT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct iso_directory_record*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct iso_directory_record *dp, int *lenskip)
{
	ISO_SUSP_PRESENT *sp;
	ISO_RRIP_EXTREF *er;
	char *p;

	/* First, see if we can find a SP field. */
	p = dp->name + FUNC1(dp->name_len);
	if (p > (char *)dp + FUNC1(dp->length)) {
		return (0);
	}
	sp = (ISO_SUSP_PRESENT *)p;
	if (FUNC0(sp->h.type, SUSP_PRESENT, 2) != 0) {
		return (0);
	}
	if (FUNC1(sp->h.length) != sizeof(ISO_SUSP_PRESENT)) {
		return (0);
	}
	if (sp->signature[0] != 0xbe || sp->signature[1] != 0xef) {
		return (0);
	}
	*lenskip = FUNC1(sp->len_skp);

	/*
	 * Now look for an ER field.  If RRIP is present, then there must
	 * be at least one of these.  It would be more pedantic to walk
	 * through the list of fields looking for a Rock Ridge ER field.
	 */
	er = (ISO_RRIP_EXTREF *)FUNC2(SUSP_EXTREF, dp, 0);
	if (er == NULL) {
		return (0);
	}
	return (1);
}