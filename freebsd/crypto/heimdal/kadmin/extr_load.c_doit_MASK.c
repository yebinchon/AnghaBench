#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct entry {char* principal; char* key; char* created; char* modified; char* valid_start; char* valid_end; char* pw_end; char* max_life; char* max_renew; char* flags; char* generation; char* extensions; } ;
typedef  int /*<<< orphan*/  s ;
typedef  scalar_t__ krb5_error_code ;
struct TYPE_13__ {int /*<<< orphan*/  extensions; int /*<<< orphan*/  generation; int /*<<< orphan*/  flags; int /*<<< orphan*/  max_renew; int /*<<< orphan*/  max_life; int /*<<< orphan*/  pw_end; int /*<<< orphan*/  valid_end; int /*<<< orphan*/  valid_start; int /*<<< orphan*/  modified_by; int /*<<< orphan*/  created_by; int /*<<< orphan*/  principal; } ;
struct TYPE_11__ {TYPE_7__ entry; } ;
typedef  TYPE_1__ hdb_entry_ex ;
typedef  int /*<<< orphan*/  ent ;
struct TYPE_12__ {scalar_t__ (* hdb_open ) (int /*<<< orphan*/ ,TYPE_2__*,int,int) ;scalar_t__ (* hdb_store ) (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,TYPE_1__*) ;int /*<<< orphan*/  (* hdb_close ) (int /*<<< orphan*/ ,TYPE_2__*) ;} ;
typedef  TYPE_2__ HDB ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  HDB_F_REPLACE ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int O_TRUNC ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  context ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*,int,char const*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC6 (unsigned char) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kadm_handle ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char const*) ; 
 char* FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC13 (int /*<<< orphan*/ *,char*) ; 
 int FUNC14 (int /*<<< orphan*/ *,char*) ; 
 int FUNC15 (char*,int /*<<< orphan*/ *) ; 
 int FUNC16 (char*,int /*<<< orphan*/ *) ; 
 int FUNC17 (int /*<<< orphan*/ *,char*) ; 
 int FUNC18 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC19 (TYPE_7__*,char*) ; 
 int FUNC20 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC21 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ,TYPE_2__*,int,int) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static int
FUNC25(const char *filename, int mergep)
{
    krb5_error_code ret;
    FILE *f;
    char s[8192]; /* XXX should fix this properly */
    char *p;
    int line;
    int flags = O_RDWR;
    struct entry e;
    hdb_entry_ex ent;
    HDB *db = FUNC0(kadm_handle);

    f = FUNC3(filename, "r");
    if(f == NULL){
	FUNC11(context, errno, "fopen(%s)", filename);
	return 1;
    }
    ret = FUNC7 (kadm_handle);
    if (ret) {
	FUNC1 (f);
	FUNC11(context, ret, "kadm5_log_truncate");
	return 1;
    }

    if(!mergep)
	flags |= O_CREAT | O_TRUNC;
    ret = db->hdb_open(context, db, flags, 0600);
    if(ret){
	FUNC11(context, ret, "hdb_open");
	FUNC1(f);
	return 1;
    }
    line = 0;
    ret = 0;
    while(FUNC2(s, sizeof(s), f) != NULL) {
	line++;

	p = s;
	while (FUNC6((unsigned char)*p))
	    p++;

	e.principal = p;
	for(p = s; *p; p++){
	    if(*p == '\\')
		p++;
	    else if(FUNC6((unsigned char)*p)) {
		*p = 0;
		break;
	    }
	}
	p = FUNC21(p);

	e.key = p;
	p = FUNC21(p);

	e.created = p;
	p = FUNC21(p);

	e.modified = p;
	p = FUNC21(p);

	e.valid_start = p;
	p = FUNC21(p);

	e.valid_end = p;
	p = FUNC21(p);

	e.pw_end = p;
	p = FUNC21(p);

	e.max_life = p;
	p = FUNC21(p);

	e.max_renew = p;
	p = FUNC21(p);

	e.flags = p;
	p = FUNC21(p);

	e.generation = p;
	p = FUNC21(p);

	e.extensions = p;
	FUNC21(p);

	FUNC12(&ent, 0, sizeof(ent));
	ret = FUNC10(context, e.principal, &ent.entry.principal);
	if(ret) {
	    const char *msg = FUNC9(context, ret);
	    FUNC4(stderr, "%s:%d:%s (%s)\n",
		    filename, line, msg, e.principal);
	    FUNC8(context, msg);
	    continue;
	}

	if (FUNC19(&ent.entry, e.key)) {
	    FUNC4 (stderr, "%s:%d:error parsing keys (%s)\n",
		     filename, line, e.key);
	    FUNC5 (context, &ent);
	    continue;
	}

	if (FUNC13(&ent.entry.created_by, e.created) == -1) {
	    FUNC4 (stderr, "%s:%d:error parsing created event (%s)\n",
		     filename, line, e.created);
	    FUNC5 (context, &ent);
	    continue;
	}
	if (FUNC14 (&ent.entry.modified_by, e.modified) == -1) {
	    FUNC4 (stderr, "%s:%d:error parsing event (%s)\n",
		     filename, line, e.modified);
	    FUNC5 (context, &ent);
	    continue;
	}
	if (FUNC20 (&ent.entry.valid_start, e.valid_start) == -1) {
	    FUNC4 (stderr, "%s:%d:error parsing time (%s)\n",
		     filename, line, e.valid_start);
	    FUNC5 (context, &ent);
	    continue;
	}
	if (FUNC20 (&ent.entry.valid_end,   e.valid_end) == -1) {
	    FUNC4 (stderr, "%s:%d:error parsing time (%s)\n",
		     filename, line, e.valid_end);
	    FUNC5 (context, &ent);
	    continue;
	}
	if (FUNC20 (&ent.entry.pw_end,      e.pw_end) == -1) {
	    FUNC4 (stderr, "%s:%d:error parsing time (%s)\n",
		     filename, line, e.pw_end);
	    FUNC5 (context, &ent);
	    continue;
	}

	if (FUNC18 (&ent.entry.max_life,  e.max_life) == -1) {
	    FUNC4 (stderr, "%s:%d:error parsing lifetime (%s)\n",
		     filename, line, e.max_life);
	    FUNC5 (context, &ent);
	    continue;

	}
	if (FUNC18 (&ent.entry.max_renew, e.max_renew) == -1) {
	    FUNC4 (stderr, "%s:%d:error parsing lifetime (%s)\n",
		     filename, line, e.max_renew);
	    FUNC5 (context, &ent);
	    continue;
	}

	if (FUNC17 (&ent.entry.flags, e.flags) != 1) {
	    FUNC4 (stderr, "%s:%d:error parsing flags (%s)\n",
		     filename, line, e.flags);
	    FUNC5 (context, &ent);
	    continue;
	}

	if(FUNC16(e.generation, &ent.entry.generation) == -1) {
	    FUNC4 (stderr, "%s:%d:error parsing generation (%s)\n",
		     filename, line, e.generation);
	    FUNC5 (context, &ent);
	    continue;
	}

	if(FUNC15(e.extensions, &ent.entry.extensions) == -1) {
	    FUNC4 (stderr, "%s:%d:error parsing extension (%s)\n",
		     filename, line, e.extensions);
	    FUNC5 (context, &ent);
	    continue;
	}

	ret = db->hdb_store(context, db, HDB_F_REPLACE, &ent);
	FUNC5 (context, &ent);
	if (ret) {
	    FUNC11(context, ret, "db_store");
	    break;
	}
    }
    db->hdb_close(context, db);
    FUNC1(f);
    return ret != 0;
}