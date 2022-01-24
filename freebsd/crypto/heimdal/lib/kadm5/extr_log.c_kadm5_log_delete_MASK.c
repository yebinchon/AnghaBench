#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int off_t ;
typedef  int /*<<< orphan*/  krb5_storage ;
typedef  int /*<<< orphan*/  krb5_principal ;
struct TYPE_5__ {int /*<<< orphan*/  log_context; } ;
typedef  TYPE_1__ kadm5_server_context ;
typedef  scalar_t__ kadm5_ret_t ;
typedef  int /*<<< orphan*/  kadm5_log_context ;

/* Variables and functions */
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kadm_delete ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

kadm5_ret_t
FUNC9 (kadm5_server_context *context,
		  krb5_principal princ)
{
    krb5_storage *sp;
    kadm5_ret_t ret;
    off_t off;
    off_t len;
    kadm5_log_context *log_context = &context->log_context;

    sp = FUNC4();
    if (sp == NULL)
	return ENOMEM;
    ret = FUNC3 (context, sp, kadm_delete);
    if (ret)
	goto out;
    ret = FUNC7 (sp, 0);
    if (ret)
	goto out;
    off = FUNC6 (sp, 0, SEEK_CUR);
    ret = FUNC8 (sp, princ);
    if (ret)
	goto out;
    len = FUNC6 (sp, 0, SEEK_CUR) - off;
    FUNC6(sp, -(len + 4), SEEK_CUR);
    ret = FUNC7 (sp, len);
    if (ret)
	goto out;
    FUNC6(sp, len, SEEK_CUR);
    ret = FUNC7 (sp, len);
    if (ret)
	goto out;
    ret = FUNC2 (log_context, sp);
    if (ret)
	goto out;
    ret = FUNC1 (log_context, sp);
    if (ret)
	goto out;
    ret = FUNC0 (context);
out:
    FUNC5 (sp);
    return ret;
}