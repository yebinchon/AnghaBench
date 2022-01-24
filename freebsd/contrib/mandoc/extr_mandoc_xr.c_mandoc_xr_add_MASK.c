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
typedef  int /*<<< orphan*/  uint32_t ;
struct mandoc_xr {char* sec; char* hashkey; char* name; int line; int pos; int count; struct mandoc_xr* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mandoc_xr*) ; 
 struct mandoc_xr* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t) ; 
 struct mandoc_xr* FUNC3 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned int,struct mandoc_xr*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const**) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ *,char*,size_t,int /*<<< orphan*/ ) ; 
 int FUNC7 (char const*) ; 
 struct mandoc_xr* xr_first ; 
 int /*<<< orphan*/ * xr_hash ; 
 struct mandoc_xr* xr_last ; 

int
FUNC8(const char *sec, const char *name, int line, int pos)
{
	struct mandoc_xr	 *xr, *oxr;
	const char		 *pend;
	size_t			  ssz, nsz, tsz;
	unsigned int		  slot;
	int			  ret;
	uint32_t		  hv;

	if (xr_hash == NULL)
		return 0;

	ssz = FUNC7(sec) + 1;
	nsz = FUNC7(name) + 1;
	tsz = ssz + nsz;
	xr = FUNC1(sizeof(*xr) + tsz);
	xr->next = NULL;
	xr->sec = xr->hashkey;
	xr->name = xr->hashkey + ssz;
	xr->line = line;
	xr->pos = pos;
	xr->count = 1;
	FUNC2(xr->sec, sec, ssz);
	FUNC2(xr->name, name, nsz);

	pend = xr->hashkey + tsz;
	hv = FUNC5(xr->hashkey, &pend);
	slot = FUNC6(xr_hash, xr->hashkey, tsz, hv);
	if ((oxr = FUNC3(xr_hash, slot)) == NULL) {
		FUNC4(xr_hash, slot, xr);
		if (xr_first == NULL)
			xr_first = xr;
		else
			xr_last->next = xr;
		xr_last = xr;
		return 0;
	}

	oxr->count++;
	ret = (oxr->line == -1) ^ (xr->line == -1);
	if (xr->line == -1)
		oxr->line = -1;
	FUNC0(xr);
	return ret;
}