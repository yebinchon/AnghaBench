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
struct TYPE_2__ {int equal; int /*<<< orphan*/ * arch; int /*<<< orphan*/ * sec; int /*<<< orphan*/ * manpath; int /*<<< orphan*/ * query; } ;
struct req {int isquery; TYPE_1__ q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*) ; 
 char* FUNC2 (char const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,char**) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 size_t FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 

__attribute__((used)) static void
FUNC7(struct req *req, const char *qs)
{
	char		*key, *val;
	size_t		 keysz, valsz;

	req->isquery	= 1;
	req->q.manpath	= NULL;
	req->q.arch	= NULL;
	req->q.sec	= NULL;
	req->q.query	= NULL;
	req->q.equal	= 1;

	key = val = NULL;
	while (*qs != '\0') {

		/* Parse one key. */

		keysz = FUNC5(qs, "=;&");
		key = FUNC2(qs, keysz);
		qs += keysz;
		if (*qs != '=')
			goto next;

		/* Parse one value. */

		valsz = FUNC5(++qs, ";&");
		val = FUNC2(qs, valsz);
		qs += valsz;

		/* Decode and catch encoding errors. */

		if ( ! (FUNC1(key) && FUNC1(val)))
			goto next;

		/* Handle key-value pairs. */

		if ( ! FUNC4(key, "query"))
			FUNC3(&req->q.query, &val);

		else if ( ! FUNC4(key, "apropos"))
			req->q.equal = !FUNC4(val, "0");

		else if ( ! FUNC4(key, "manpath")) {
#ifdef COMPAT_OLDURI
			if ( ! strncmp(val, "OpenBSD ", 8)) {
				val[7] = '-';
				if ('C' == val[8])
					val[8] = 'c';
			}
#endif
			FUNC3(&req->q.manpath, &val);
		}

		else if ( ! (FUNC4(key, "sec")
#ifdef COMPAT_OLDURI
		    && strcmp(key, "sektion")
#endif
		    )) {
			if ( ! FUNC4(val, "0"))
				*val = '\0';
			FUNC3(&req->q.sec, &val);
		}

		else if ( ! FUNC4(key, "arch")) {
			if ( ! FUNC4(val, "default"))
				*val = '\0';
			FUNC3(&req->q.arch, &val);
		}

		/*
		 * The key must be freed in any case.
		 * The val may have been handed over to the query
		 * structure, in which case it is now NULL.
		 */
next:
		FUNC0(key);
		key = NULL;
		FUNC0(val);
		val = NULL;

		if (*qs != '\0')
			qs++;
	}
}