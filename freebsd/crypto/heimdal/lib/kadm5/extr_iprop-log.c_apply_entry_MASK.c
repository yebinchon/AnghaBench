#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  time_t ;
struct replay_options {int start_version_integer; int end_version_integer; } ;
typedef  int /*<<< orphan*/  krb5_storage ;
typedef  scalar_t__ krb5_error_code ;
struct TYPE_4__ {int /*<<< orphan*/  context; } ;
typedef  TYPE_1__ kadm5_server_context ;
typedef  enum kadm_ops { ____Placeholder_kadm_ops } kadm_ops ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int,scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void
FUNC5(kadm5_server_context *server_context,
	    uint32_t ver,
	    time_t timestamp,
	    enum kadm_ops op,
	    uint32_t len,
	    krb5_storage *sp,
	    void *ctx)
{
    struct replay_options *opt = ctx;
    krb5_error_code ret;

    if((opt->start_version_integer != -1 && ver < (uint32_t)opt->start_version_integer) ||
       (opt->end_version_integer != -1 && ver > (uint32_t)opt->end_version_integer)) {
	/* XXX skip this entry */
	FUNC2(sp, len, SEEK_CUR);
	return;
    }
    FUNC4 ("ver %u... ", ver);
    FUNC0 (stdout);

    ret = FUNC1 (server_context,
			    op, ver, len, sp);
    if (ret)
	FUNC3 (server_context->context, ret, "kadm5_log_replay");

    FUNC4 ("done\n");
}