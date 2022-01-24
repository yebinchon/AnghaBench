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
typedef  int uint64_t ;
struct str {int mask; struct mpage const* mpage; int /*<<< orphan*/  key; } ;
struct ohash {int dummy; } ;
struct mpage {TYPE_1__* mlinks; } ;
struct TYPE_2__ {int /*<<< orphan*/  file; } ;

/* Variables and functions */
 int KEY_MAX ; 
 int NAME_FIRST ; 
 int TYPE_Nm ; 
 int debug ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct str* FUNC1 (int,int) ; 
 int /*<<< orphan*/ * mansearch_keynames ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,size_t) ; 
 int name_mask ; 
 struct ohash names ; 
 struct str* FUNC3 (struct ohash*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct ohash*,unsigned int,struct str*) ; 
 unsigned int FUNC5 (struct ohash*,char*,char const**) ; 
 int FUNC6 (char**,size_t*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int,...) ; 
 struct ohash strings ; 

__attribute__((used)) static void
FUNC8(const struct mpage *mpage, char *cp, size_t sz, uint64_t v)
{
	struct ohash	*htab;
	struct str	*s;
	const char	*end;
	unsigned int	 slot;
	int		 i, mustfree;

	if (0 == sz)
		return;

	mustfree = FUNC6(&cp, &sz);

	if (TYPE_Nm & v) {
		htab = &names;
		v &= name_mask;
		if (v & NAME_FIRST)
			name_mask &= ~NAME_FIRST;
		if (debug > 1)
			FUNC7(mpage->mlinks->file,
			    "Adding name %*s, bits=0x%llx", (int)sz, cp,
			    (unsigned long long)v);
	} else {
		htab = &strings;
		if (debug > 1)
		    for (i = 0; i < KEY_MAX; i++)
			if ((uint64_t)1 << i & v)
			    FUNC7(mpage->mlinks->file,
				"Adding key %s=%*s",
				mansearch_keynames[i], (int)sz, cp);
	}

	end = cp + sz;
	slot = FUNC5(htab, cp, &end);
	s = FUNC3(htab, slot);

	if (NULL != s && mpage == s->mpage) {
		s->mask |= v;
		return;
	} else if (NULL == s) {
		s = FUNC1(1, sizeof(struct str) + sz + 1);
		FUNC2(s->key, cp, sz);
		FUNC4(htab, slot, s);
	}
	s->mpage = mpage;
	s->mask = v;

	if (mustfree)
		FUNC0(cp);
}