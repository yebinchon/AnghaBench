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
struct units {unsigned int mult; int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned char) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 size_t FUNC2 (char const*,char*) ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char const*,int /*<<< orphan*/ *,size_t) ; 
 int FUNC5 (char const*,char**,int /*<<< orphan*/ ) ; 
 int FUNC6 (int,int,unsigned int) ; 
 int FUNC7 (int,int,unsigned int) ; 
 int FUNC8 (int,int,unsigned int) ; 

__attribute__((used)) static int
FUNC9 (const char *s, const struct units *units,
		 const char *def_unit,
		 int (*func)(int res, int val, unsigned mult),
		 int init,
		 int accept_no_val_p)
{
    const char *p;
    int res = init;
    unsigned def_mult = 1;

    if (def_unit != NULL) {
	const struct units *u;

	for (u = units; u->name; ++u) {
	    if (FUNC1 (u->name, def_unit) == 0) {
		def_mult = u->mult;
		break;
	    }
	}
	if (u->name == NULL)
	    return -1;
    }

    p = s;
    while (*p) {
	int val;
	char *next;
	const struct units *u, *partial_unit;
	size_t u_len;
	unsigned partial;
	int no_val_p = 0;

	while(FUNC0((unsigned char)*p) || *p == ',')
	    ++p;

	val = FUNC5(p, &next, 0);
	if (p == next) {
	    val = 0;
	    if(!accept_no_val_p)
		return -1;
	    no_val_p = 1;
	}
	p = next;
	while (FUNC0((unsigned char)*p))
	    ++p;
	if (*p == '\0') {
	    res = (*func)(res, val, def_mult);
	    if (res < 0)
		return res;
	    break;
	} else if (*p == '+') {
	    ++p;
	    val = 1;
	} else if (*p == '-') {
	    ++p;
	    val = -1;
	}
	if (no_val_p && val == 0)
	    val = 1;
	u_len = FUNC2 (p, ", \t");
	partial = 0;
	partial_unit = NULL;
	if (u_len > 1 && p[u_len - 1] == 's')
	    --u_len;
	for (u = units; u->name; ++u) {
	    if (FUNC4 (p, u->name, u_len) == 0) {
		if (u_len == FUNC3 (u->name)) {
		    p += u_len;
		    res = (*func)(res, val, u->mult);
		    if (res < 0)
			return res;
		    break;
		} else {
		    ++partial;
		    partial_unit = u;
		}
	    }
	}
	if (u->name == NULL) {
	    if (partial == 1) {
		p += u_len;
		res = (*func)(res, val, partial_unit->mult);
		if (res < 0)
		    return res;
	    } else {
		return -1;
	    }
	}
	if (*p == 's')
	    ++p;
    }
    return res;
}