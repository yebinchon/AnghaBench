#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  time_t ;
struct TYPE_11__ {scalar_t__ version; int flags; int /*<<< orphan*/  fd; int /*<<< orphan*/  ac; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ slave ;
typedef  scalar_t__ off_t ;
typedef  int /*<<< orphan*/  krb5_storage ;
struct TYPE_12__ {scalar_t__ length; scalar_t__ data; } ;
typedef  TYPE_2__ krb5_data ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  enum kadm_ops { ____Placeholder_kadm_ops } kadm_ops ;

/* Variables and functions */
 int /*<<< orphan*/  FOR_YOU ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int SLAVE_F_DEAD ; 
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,int*,scalar_t__*) ; 
 int FUNC2 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC13 (int /*<<< orphan*/ ,TYPE_1__*,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC16 (krb5_context context, slave *s, int log_fd,
	    const char *database, uint32_t current_version)
{
    krb5_storage *sp;
    uint32_t ver;
    time_t timestamp;
    enum kadm_ops op;
    uint32_t len;
    off_t right, left;
    krb5_data data;
    int ret = 0;

    if (s->version == current_version) {
	FUNC11(context, "slave %s in sync already at version %ld",
		   s->name, (long)s->version);
	return 0;
    }

    if (s->flags & SLAVE_F_DEAD)
	return 0;

    /* if slave is a fresh client, starting over */
    if (s->version == 0) {
	FUNC11(context, "sending complete log to fresh slave %s",
		   s->name);
	return FUNC13 (context, s, database, current_version);
    }

    sp = FUNC0 (log_fd);
    right = FUNC8(sp, 0, SEEK_CUR);
    for (;;) {
	ret = FUNC1 (context, sp, &ver, &timestamp, &op, &len);
	if (ret)
	    FUNC4(context, 1, ret,
		     "send_diffs: failed to find previous entry");
	left = FUNC8(sp, -16, SEEK_CUR);
	if (ver == s->version)
	    return 0;
	if (ver == s->version + 1)
	    break;
	if (left == 0) {
	    FUNC5(sp);
	    FUNC11(context,
		       "slave %s (version %lu) out of sync with master "
		       "(first version in log %lu), sending complete database",
		       s->name, (unsigned long)s->version, (unsigned long)ver);
	    return FUNC13 (context, s, database, current_version);
	}
    }

    FUNC11(context,
	       "syncing slave %s from version %lu to version %lu",
	       s->name, (unsigned long)s->version,
	       (unsigned long)current_version);

    ret = FUNC2 (&data, right - left + 4);
    if (ret) {
	FUNC5(sp);
	FUNC10 (context, ret, "send_diffs: krb5_data_alloc");
	FUNC14(context, s);
	return 1;
    }
    FUNC7 (sp, (char *)data.data + 4, data.length - 4);
    FUNC5(sp);

    sp = FUNC6 (&data);
    if (sp == NULL) {
	FUNC11 (context, "send_diffs: krb5_storage_from_data");
	FUNC14(context, s);
	return 1;
    }
    FUNC9 (sp, FOR_YOU);
    FUNC5(sp);

    ret = FUNC12(context, s->ac, &s->fd, &data);
    FUNC3(&data);

    if (ret) {
	FUNC10 (context, ret, "send_diffs: krb5_write_priv_message");
	FUNC14(context, s);
	return 1;
    }
    FUNC15(s);

    s->version = current_version;

    return 0;
}