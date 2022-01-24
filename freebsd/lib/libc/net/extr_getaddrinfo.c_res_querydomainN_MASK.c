#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct res_target {int dummy; } ;
typedef  TYPE_1__* res_state ;
typedef  int /*<<< orphan*/  nbuf ;
struct TYPE_5__ {int options; } ;

/* Variables and functions */
 int MAXDNAME ; 
 int /*<<< orphan*/  NO_RECOVERY ; 
 int RES_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,char const*) ; 
 int FUNC2 (char const*,struct res_target*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char const*,char const*) ; 
 size_t FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,size_t) ; 

__attribute__((used)) static int
FUNC6(const char *name, const char *domain,
    struct res_target *target, res_state res)
{
	char nbuf[MAXDNAME];
	const char *longname = nbuf;
	size_t n, d;

#ifdef DEBUG
	if (res->options & RES_DEBUG)
		printf(";; res_querydomain(%s, %s)\n",
			name, domain?domain:"<Nil>");
#endif
	if (domain == NULL) {
		/*
		 * Check for trailing '.';
		 * copy without '.' if present.
		 */
		n = FUNC4(name);
		if (n >= MAXDNAME) {
			FUNC0(res, NO_RECOVERY);
			return (-1);
		}
		if (n > 0 && name[--n] == '.') {
			FUNC5(nbuf, name, n);
			nbuf[n] = '\0';
		} else
			longname = name;
	} else {
		n = FUNC4(name);
		d = FUNC4(domain);
		if (n + d + 1 >= MAXDNAME) {
			FUNC0(res, NO_RECOVERY);
			return (-1);
		}
		FUNC3(nbuf, sizeof(nbuf), "%s.%s", name, domain);
	}
	return (FUNC2(longname, target, res));
}