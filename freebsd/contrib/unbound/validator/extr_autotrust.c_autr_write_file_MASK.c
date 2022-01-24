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
typedef  int /*<<< orphan*/  tempf ;
struct trust_anchor {TYPE_1__* autr; } ;
struct module_env {scalar_t__ worker; } ;
struct TYPE_2__ {char* file; } ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,struct trust_anchor*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,...) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (char*,char*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 scalar_t__ FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,int,char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,char*) ; 

void FUNC18(struct module_env* env, struct trust_anchor* tp)
{
	FILE* out;
	char* fname = tp->autr->file;
	char tempf[2048];
	FUNC11(tp->autr);
	if(!env) {
		FUNC12("autr_write_file: Module environment is NULL.");
		return;
	}
	/* unique name with pid number and thread number */
	FUNC14(tempf, sizeof(tempf), "%s.%d-%d", fname, (int)FUNC10(),
		env->worker?*(int*)env->worker:0);
	FUNC17(VERB_ALGO, "autotrust: write to disk: %s", tempf);
	out = FUNC8(tempf, "w");
	if(!out) {
		FUNC4("could not open autotrust file for writing, %s: %s",
			tempf, FUNC15(errno));
		return;
	}
	if(!FUNC3(out, tempf, tp)) {
		/* failed to write contents (completely) */
		FUNC5(out);
		FUNC16(tempf);
		FUNC4("could not completely write: %s", fname);
		return;
	}
	if(FUNC6(out) != 0)
		FUNC12("could not fflush(%s): %s", fname, FUNC15(errno));
#ifdef HAVE_FSYNC
	if(fsync(fileno(out)) != 0)
		log_err("could not fsync(%s): %s", fname, strerror(errno));
#else
	FUNC0((HANDLE)FUNC2(FUNC1(out)));
#endif
	if(FUNC5(out) != 0) {
		FUNC4("could not complete write: %s: %s",
			fname, FUNC15(errno));
		FUNC16(tempf);
		return;
	}
	/* success; overwrite actual file */
	FUNC17(VERB_ALGO, "autotrust: replaced %s", fname);
#ifdef UB_ON_WINDOWS
	(void)unlink(fname); /* windows does not replace file with rename() */
#endif
	if(FUNC13(tempf, fname) < 0) {
		FUNC4("rename(%s to %s): %s", tempf, fname, FUNC15(errno));
	}
}