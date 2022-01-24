#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ ssize_t ;
typedef  scalar_t__ off_t ;
typedef  int /*<<< orphan*/  krb5_storage ;
typedef  int /*<<< orphan*/  krb5_context ;
struct TYPE_5__ {scalar_t__ version; int /*<<< orphan*/  log_fd; } ;
struct TYPE_6__ {TYPE_1__ log_context; int /*<<< orphan*/  context; } ;
typedef  TYPE_2__ kadm5_server_context ;
typedef  scalar_t__ int32_t ;
typedef  enum kadm_ops { ____Placeholder_kadm_ops } kadm_ops ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*,int,scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*) ; 
 char* FUNC6 (int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,void*,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,long,...) ; 
 void* FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,void*,scalar_t__) ; 

__attribute__((used)) static void
FUNC13 (krb5_context context,
	      krb5_storage *sp,
	      kadm5_server_context *server_context)
{
    int ret;
    off_t left, right;
    void *buf;
    int32_t vers, vers2;
    ssize_t sret;

    /*
     * Seek to the current version of the local database.
     */
    do {
	int32_t len, timestamp, tmp;
	enum kadm_ops op;

	if(FUNC7 (sp, &vers) != 0)
	    return;
	FUNC7 (sp, &timestamp);
	FUNC7 (sp, &tmp);
	op = tmp;
	FUNC7 (sp, &len);
	if ((uint32_t)vers <= server_context->log_context.version)
	    FUNC9(sp, len + 8, SEEK_CUR);
    } while((uint32_t)vers <= server_context->log_context.version);

    /*
     * Read up rest of the entires into the memory...
     */
    left  = FUNC9 (sp, -16, SEEK_CUR);
    right = FUNC9 (sp, 0, SEEK_END);
    buf = FUNC11 (right - left);
    if (buf == NULL && (right - left) != 0)
	FUNC4 (context, 1, "malloc: no memory");

    /*
     * ...and then write them out to the on-disk log.
     */
    FUNC9 (sp, left, SEEK_SET);
    FUNC8 (sp, buf, right - left);
    sret = FUNC12 (server_context->log_context.log_fd, buf, right-left);
    if (sret != right - left)
	FUNC3(context, 1, errno, "Failed to write log to disk");
    ret = FUNC1 (server_context->log_context.log_fd);
    if (ret)
	FUNC3(context, 1, errno, "Failed to sync log to disk");
    FUNC0 (buf);

    /*
     * Go back to the startpoint and start to commit the entires to
     * the database.
     */
    FUNC9 (sp, left, SEEK_SET);

    for(;;) {
	int32_t len, len2, timestamp, tmp;
	off_t cur, cur2;
	enum kadm_ops op;

	if(FUNC7 (sp, &vers) != 0)
	    break;
	ret = FUNC7 (sp, &timestamp);
	if (ret) FUNC4(context, 1, "entry %ld: too short", (long)vers);
	ret = FUNC7 (sp, &tmp);
	if (ret) FUNC4(context, 1, "entry %ld: too short", (long)vers);
	op = tmp;
	ret = FUNC7 (sp, &len);
	if (ret) FUNC4(context, 1, "entry %ld: too short", (long)vers);
	if (len < 0)
	    FUNC4(context, 1, "log is corrupted, "
		      "negative length of entry version %ld: %ld",
		      (long)vers, (long)len);
	cur = FUNC9(sp, 0, SEEK_CUR);

	FUNC10 (context, "replaying entry %d", (int)vers);

	ret = FUNC2 (server_context,
				op, vers, len, sp);
	if (ret) {
	    const char *s = FUNC6(server_context->context, ret);
	    FUNC10 (context,
			"kadm5_log_replay: %ld. Lost entry entry, "
			"Database out of sync ?: %s (%d)",
			(long)vers, s ? s : "unknown error", ret);
	    FUNC5(context, s);
	}

	{
	    /*
	     * Make sure the krb5_log_replay does the right thing wrt
	     * reading out data from the sp.
	     */
	    cur2 = FUNC9(sp, 0, SEEK_CUR);
	    if (cur + len != cur2)
		FUNC4(context, 1,
			  "kadm5_log_reply version: %ld didn't read the whole entry",
			  (long)vers);
	}

	if (FUNC7 (sp, &len2) != 0)
	    FUNC4(context, 1, "entry %ld: postamble too short", (long)vers);
	if(FUNC7 (sp, &vers2) != 0)
	    FUNC4(context, 1, "entry %ld: postamble too short", (long)vers);

	if (len != len2)
	    FUNC4(context, 1, "entry %ld: len != len2", (long)vers);
	if (vers != vers2)
	    FUNC4(context, 1, "entry %ld: vers != vers2", (long)vers);
    }

    /*
     * Update version
     */

    server_context->log_context.version = vers;
}