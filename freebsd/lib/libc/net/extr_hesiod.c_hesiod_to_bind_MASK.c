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
struct hesiod_p {char* rhs; char const* lhs; } ;
typedef  int /*<<< orphan*/  bindname ;

/* Variables and functions */
 int /*<<< orphan*/  EMSGSIZE ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  ENOMEM ; 
 int MAXDNAME ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (void*,char**) ; 
 char** FUNC1 (void*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 char* FUNC3 (char*,char) ; 
 char* FUNC4 (char*) ; 
 int FUNC5 (char*,char const*,int) ; 
 int FUNC6 (char const*) ; 

char *
FUNC7(void *context, const char *name, const char *type)
{
	struct hesiod_p *ctx = (struct hesiod_p *) context;
	char		 bindname[MAXDNAME], *p, *ret, **rhs_list = NULL;
	const char	*rhs;
	int		 len;

	if (FUNC5(bindname, name, sizeof(bindname)) >= sizeof(bindname)) {
		errno = EMSGSIZE;
		return NULL;
	}

		/*
		 * Find the right right hand side to use, possibly
		 * truncating bindname.
		 */
	p = FUNC3(bindname, '@');
	if (p) {
		*p++ = 0;
		if (FUNC3(p, '.'))
			rhs = name + (p - bindname);
		else {
			rhs_list = FUNC1(context, p, "rhs-extension");
			if (rhs_list)
				rhs = *rhs_list;
			else {
				errno = ENOENT;
				return NULL;
			}
		}
	} else
		rhs = ctx->rhs;

		/* See if we have enough room. */
	len = FUNC6(bindname) + 1 + FUNC6(type);
	if (ctx->lhs)
		len += FUNC6(ctx->lhs) + ((ctx->lhs[0] != '.') ? 1 : 0);
	len += FUNC6(rhs) + ((rhs[0] != '.') ? 1 : 0);
	if (len > sizeof(bindname) - 1) {
		if (rhs_list)
			FUNC0(context, rhs_list);
		errno = EMSGSIZE;
		return NULL;
	}
		/* Put together the rest of the domain. */
	FUNC2(bindname, ".");
	FUNC2(bindname, type);
		/* Only append lhs if it isn't empty. */
	if (ctx->lhs && ctx->lhs[0] != '\0' ) {
		if (ctx->lhs[0] != '.')
			FUNC2(bindname, ".");
		FUNC2(bindname, ctx->lhs);
	}
	if (rhs[0] != '.')
		FUNC2(bindname, ".");
	FUNC2(bindname, rhs);

		/* rhs_list is no longer needed, since we're done with rhs. */
	if (rhs_list)
		FUNC0(context, rhs_list);

		/* Make a copy of the result and return it to the caller. */
	ret = FUNC4(bindname);
	if (!ret)
		errno = ENOMEM;
	return ret;
}