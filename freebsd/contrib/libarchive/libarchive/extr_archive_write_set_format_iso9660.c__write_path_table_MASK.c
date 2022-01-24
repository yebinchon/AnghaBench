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
struct vdd {TYPE_1__* pathtbl; } ;
struct isoent {size_t id_len; int /*<<< orphan*/ * identifier; TYPE_2__* parent; int /*<<< orphan*/  dir_location; } ;
struct archive_write {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  dir_number; } ;
struct TYPE_3__ {int cnt; struct isoent** sorted; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int /*<<< orphan*/ ) ; 
 unsigned char* FUNC6 (struct archive_write*) ; 
 int FUNC7 (struct archive_write*,int) ; 
 size_t FUNC8 (struct archive_write*) ; 

__attribute__((used)) static int
FUNC9(struct archive_write *a, int type_m, int depth,
    struct vdd *vdd)
{
	unsigned char *bp, *wb;
	struct isoent **ptbl;
	size_t wbremaining;
	int i, r, wsize;

	if (vdd->pathtbl[depth].cnt == 0)
		return (0);

	wsize = 0;
	wb = FUNC6(a);
	wbremaining = FUNC8(a);
	bp = wb - 1;
	ptbl = vdd->pathtbl[depth].sorted;
	for (i = 0; i < vdd->pathtbl[depth].cnt; i++) {
		struct isoent *np;
		size_t len;

		np = ptbl[i];
		if (np->identifier == NULL)
			len = 1; /* root directory */
		else
			len = np->id_len;
		if (wbremaining - ((bp+1) - wb) < (len + 1 + 8)) {
			r = FUNC7(a, (bp+1) - wb);
			if (r < 0)
				return (r);
			wb = FUNC6(a);
			wbremaining = FUNC8(a);
			bp = wb -1;
		}
		/* Length of Directory Identifier */
		FUNC1(bp+1, (unsigned char)len);
		/* Extended Attribute Record Length */
		FUNC1(bp+2, 0);
		/* Location of Extent */
		if (type_m)
			FUNC5(bp+3, np->dir_location);
		else
			FUNC4(bp+3, np->dir_location);
		/* Parent Directory Number */
		if (type_m)
			FUNC3(bp+7, np->parent->dir_number);
		else
			FUNC2(bp+7, np->parent->dir_number);
		/* Directory Identifier */
		if (np->identifier == NULL)
			bp[9] = 0;
		else
			FUNC0(&bp[9], np->identifier, len);
		if (len & 0x01) {
			/* Padding Field */
			bp[9+len] = 0;
			len++;
		}
		wsize += 8 + (int)len;
		bp += 8 + len;
	}
	if ((bp + 1) > wb) {
		r = FUNC7(a, (bp+1)-wb);
		if (r < 0)
			return (r);
	}
	return (wsize);
}