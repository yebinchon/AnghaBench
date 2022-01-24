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
struct keytype {int type; int nid; int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int KEY_ECDSA ; 
 int KEY_ECDSA_CERT ; 
 int KEY_UNSPEC ; 
 struct keytype* keytypes ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(const char *s, size_t l, int *nid)
{
	const struct keytype *kt;

	for (kt = keytypes; kt->type != -1; kt++) {
		if (kt->name == NULL || FUNC1(kt->name) != l)
			continue;
		if (FUNC0(s, kt->name, l) == 0) {
			*nid = -1;
			if (kt->type == KEY_ECDSA || kt->type == KEY_ECDSA_CERT)
				*nid = kt->nid;
			return kt->type;
		}
	}
	return KEY_UNSPEC;
}