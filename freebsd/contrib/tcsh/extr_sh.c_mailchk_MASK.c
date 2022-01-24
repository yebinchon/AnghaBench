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
typedef  scalar_t__ time_t ;
struct varent {int /*<<< orphan*/ ** vec; } ;
struct stat {scalar_t__ st_mtime; scalar_t__ st_size; scalar_t__ st_atime; int /*<<< orphan*/  st_mode; } ;
struct TYPE_2__ {scalar_t__ tv_sec; } ;
typedef  int /*<<< orphan*/  DIR ;
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 char* FUNC0 (int,int,char*) ; 
 int MAILINTVL ; 
 int /*<<< orphan*/  STRmail ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct varent* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ **) ; 
 scalar_t__ chktim ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/  (*) (char*)) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ loginsh ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (char*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ seconds0 ; 
 char* FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (char*,struct stat*) ; 
 char* FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__*) ; 
 TYPE_1__ time0 ; 
 char* FUNC15 (char*,char*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (char*,...) ; 

__attribute__((used)) static void
FUNC18(void)
{
    struct varent *v;
    Char **vp;
    time_t  t;
    int     intvl, cnt;
    struct stat stb;
    int    new;

    v = FUNC2(STRmail);
    if (v == NULL || v->vec == NULL)
	return;
    (void) FUNC14(&t);
    vp = v->vec;
    cnt = FUNC3(vp);
    intvl = (cnt && FUNC8(*vp)) ? (--cnt, FUNC7(*vp++)) : MAILINTVL;
    if (intvl < 1)
	intvl = 1;
    if (chktim + intvl > t)
	return;
    for (; *vp; vp++) {
	char *filename = FUNC11(*vp);
	char *mboxdir = filename;

	if (FUNC12(filename, &stb) < 0)
	    continue;
#if defined(BSDTIMES) || defined(_SEQUENT_)
	new = stb.st_mtime > time0.tv_sec;
#else
	new = stb.st_mtime > seconds0;
#endif
	if (FUNC1(stb.st_mode)) {
	    DIR *mailbox;
	    int mailcount = 0;
	    char *tempfilename;
	    struct stat stc;

	    tempfilename = FUNC15("%s/new", filename);

	    if (FUNC12(tempfilename, &stc) != -1 && FUNC1(stc.st_mode)) {
		/*
		 * "filename/new" exists and is a directory; you are
		 * using Qmail.
		 */
		stb = stc;
#if defined(BSDTIMES) || defined(_SEQUENT_)
		new = stb.st_mtime > time0.tv_sec;
#else
		new = stb.st_mtime > seconds0;
#endif
		mboxdir = tempfilename;
	    }

	    if (stb.st_mtime <= chktim + 1 || (loginsh && !new)) {
		FUNC16(tempfilename);
		continue;
	    }

	    mailbox = FUNC9(mboxdir);
	    FUNC16(tempfilename);
	    if (mailbox == NULL)
		continue;

	    /* skip . and .. */
	    if (!FUNC10(mailbox) || !FUNC10(mailbox)) {
		(void)FUNC6(mailbox);
		continue;
	    }

	    while (FUNC10(mailbox))
		mailcount++;

	    (void)FUNC6(mailbox);
	    if (mailcount == 0)
		continue;

	    if (cnt == 1)
		FUNC17(FUNC0(11, 3, "You have %d mail messages.\n"),
			mailcount);
	    else
		FUNC17(FUNC0(11, 4, "You have %d mail messages in %s.\n"),
			mailcount, filename);
	}
	else {
	    char *type;
	    
	    if (stb.st_size == 0 || stb.st_atime >= stb.st_mtime ||
		(stb.st_atime <= chktim && stb.st_mtime <= chktim) ||
		(loginsh && !new))
		continue;
	    type = FUNC13(new ? FUNC0(11, 6, "new ") : "");
	    FUNC4(type, xfree);
	    if (cnt == 1)
		FUNC17(FUNC0(11, 5, "You have %smail.\n"), type);
	    else
	        FUNC17(FUNC0(11, 7, "You have %smail in %s.\n"), type, filename);
	    FUNC5(type);
	}
    }
    chktim = t;
}