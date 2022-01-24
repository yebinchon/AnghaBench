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
typedef  int /*<<< orphan*/  toks ;
struct manoutput {char const* includes; char const* man; char const* paper; char const* style; char const* tag; int fragment; int mdoc; int noval; int toc; void* width; void* indent; } ;

/* Variables and functions */
 int /*<<< orphan*/  MANDOCERR_BADARG_BAD ; 
 int /*<<< orphan*/  MANDOCERR_BADVAL ; 
 int /*<<< orphan*/  MANDOCERR_BADVAL_BAD ; 
 int /*<<< orphan*/  MANDOCERR_BADVAL_DUPE ; 
 int /*<<< orphan*/  MANDOCERR_BADVAL_MISS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (char**,char*,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const* const,...) ; 
 void* FUNC4 (char const*) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char const) ; 
 size_t FUNC6 (char const* const) ; 
 scalar_t__ FUNC7 (char const*,char const* const,size_t) ; 
 void* FUNC8 (char const*,int,int,char const**) ; 

int
FUNC9(struct manoutput *conf, const char *cp, int fromfile)
{
	const char *const toks[] = {
	    "includes", "man", "paper", "style", "indent", "width",
	    "tag", "fragment", "mdoc", "noval", "toc"
	};
	const size_t ntoks = sizeof(toks) / sizeof(toks[0]);

	const char	*errstr;
	char		*oldval;
	size_t		 len, tok;

	for (tok = 0; tok < ntoks; tok++) {
		len = FUNC6(toks[tok]);
		if (FUNC7(cp, toks[tok], len) == 0 &&
		    FUNC5(" =	", cp[len]) != NULL) {
			cp += len;
			if (*cp == '=')
				cp++;
			while (FUNC1((unsigned char)*cp))
				cp++;
			break;
		}
	}

	if (tok < 6 && *cp == '\0') {
		FUNC3(MANDOCERR_BADVAL_MISS, 0, 0, "-O %s=?", toks[tok]);
		return -1;
	}
	if (tok > 6 && tok < ntoks && *cp != '\0') {
		FUNC3(MANDOCERR_BADVAL, 0, 0, "-O %s=%s", toks[tok], cp);
		return -1;
	}

	switch (tok) {
	case 0:
		if (conf->includes != NULL) {
			oldval = FUNC4(conf->includes);
			break;
		}
		conf->includes = FUNC4(cp);
		return 0;
	case 1:
		if (conf->man != NULL) {
			oldval = FUNC4(conf->man);
			break;
		}
		conf->man = FUNC4(cp);
		return 0;
	case 2:
		if (conf->paper != NULL) {
			oldval = FUNC4(conf->paper);
			break;
		}
		conf->paper = FUNC4(cp);
		return 0;
	case 3:
		if (conf->style != NULL) {
			oldval = FUNC4(conf->style);
			break;
		}
		conf->style = FUNC4(cp);
		return 0;
	case 4:
		if (conf->indent) {
			FUNC2(&oldval, "%zu", conf->indent);
			break;
		}
		conf->indent = FUNC8(cp, 0, 1000, &errstr);
		if (errstr == NULL)
			return 0;
		FUNC3(MANDOCERR_BADVAL_BAD, 0, 0,
		    "-O indent=%s is %s", cp, errstr);
		return -1;
	case 5:
		if (conf->width) {
			FUNC2(&oldval, "%zu", conf->width);
			break;
		}
		conf->width = FUNC8(cp, 1, 1000, &errstr);
		if (errstr == NULL)
			return 0;
		FUNC3(MANDOCERR_BADVAL_BAD, 0, 0,
		    "-O width=%s is %s", cp, errstr);
		return -1;
	case 6:
		if (conf->tag != NULL) {
			oldval = FUNC4(conf->tag);
			break;
		}
		conf->tag = FUNC4(cp);
		return 0;
	case 7:
		conf->fragment = 1;
		return 0;
	case 8:
		conf->mdoc = 1;
		return 0;
	case 9:
		conf->noval = 1;
		return 0;
	case 10:
		conf->toc = 1;
		return 0;
	default:
		FUNC3(MANDOCERR_BADARG_BAD, 0, 0, "-O %s", cp);
		return -1;
	}
	if (fromfile) {
		FUNC0(oldval);
		return 0;
	} else {
		FUNC3(MANDOCERR_BADVAL_DUPE, 0, 0,
		    "-O %s=%s: already set to %s", toks[tok], cp, oldval);
		FUNC0(oldval);
		return -1;
	}
}