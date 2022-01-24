#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct config_file {scalar_t__ dnscrypt_port; int /*<<< orphan*/  dnscrypt; } ;
struct TYPE_6__ {char** gl_pathv; scalar_t__ gl_pathc; } ;
typedef  TYPE_1__ glob_t ;
typedef  int /*<<< orphan*/  g ;
struct TYPE_7__ {scalar_t__ errors; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int GLOB_ABORTED ; 
 int GLOB_BRACE ; 
 int GLOB_ERR ; 
 int GLOB_NOMATCH ; 
 int GLOB_NOSORT ; 
 int GLOB_NOSPACE ; 
 int GLOB_TILDE ; 
 int /*<<< orphan*/  VERB_QUERY ; 
 TYPE_5__* cfg_parser ; 
 int /*<<< orphan*/  FUNC0 (struct config_file*,char*,char const*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,scalar_t__) ; 
 int FUNC4 (char*,int,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC8 (char*,char) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * ub_c_in ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,char*) ; 

int 
FUNC12(struct config_file* cfg, const char* filename, const char* chroot)
{
	FILE *in;
	char *fname = (char*)filename;
#ifdef HAVE_GLOB
	glob_t g;
	size_t i;
	int r, flags;
#endif
	if(!fname)
		return 1;

	/* check for wildcards */
#ifdef HAVE_GLOB
	if(!(!strchr(fname, '*') && !strchr(fname, '?') && !strchr(fname, '[') &&
		!strchr(fname, '{') && !strchr(fname, '~'))) {
		verbose(VERB_QUERY, "wildcard found, processing %s", fname);
		flags = 0
#ifdef GLOB_ERR
			| GLOB_ERR
#endif
#ifdef GLOB_NOSORT
			| GLOB_NOSORT
#endif
#ifdef GLOB_BRACE
			| GLOB_BRACE
#endif
#ifdef GLOB_TILDE
			| GLOB_TILDE
#endif
		;
		memset(&g, 0, sizeof(g));
		r = glob(fname, flags, NULL, &g);
		if(r) {
			/* some error */
			globfree(&g);
			if(r == GLOB_NOMATCH) {
				verbose(VERB_QUERY, "include: "
				"no matches for %s", fname);
				return 1; 
			} else if(r == GLOB_NOSPACE) {
				log_err("include: %s: "
					"fnametern out of memory", fname);
			} else if(r == GLOB_ABORTED) {
				log_err("wildcard include: %s: expansion "
					"aborted (%s)", fname, strerror(errno));
			} else {
				log_err("wildcard include: %s: expansion "
					"failed (%s)", fname, strerror(errno));
			}
			/* ignore globs that yield no files */
			return 1;
		}
		/* process files found, if any */
		for(i=0; i<(size_t)g.gl_pathc; i++) {
			if(!config_read(cfg, g.gl_pathv[i], chroot)) {
				log_err("error reading wildcard "
					"include: %s", g.gl_pathv[i]);
				globfree(&g);
				return 0;
			}
		}
		globfree(&g);
		return 1;
	}
#endif /* HAVE_GLOB */

	in = FUNC2(fname, "r");
	if(!in) {
		FUNC6("Could not open %s: %s", fname, FUNC9(errno));
		return 0;
	}
	FUNC0(cfg, fname, chroot);
	ub_c_in = in;
	FUNC10();
	FUNC1(in);

	if(!cfg->dnscrypt) cfg->dnscrypt_port = 0;

	if(cfg_parser->errors != 0) {
		FUNC3(stderr, "read %s failed: %d errors in configuration file\n",
			fname, cfg_parser->errors);
		errno=EINVAL;
		return 0;
	}

	return 1;
}