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
typedef  int /*<<< orphan*/  krb5_storage ;
struct TYPE_4__ {int /*<<< orphan*/  log_context; } ;
typedef  TYPE_1__ kadm5_server_context ;
typedef  scalar_t__ kadm5_ret_t ;
typedef  int /*<<< orphan*/  kadm5_log_context ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kadm_nop ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

kadm5_ret_t
FUNC6 (kadm5_server_context *context)
{
    krb5_storage *sp;
    kadm5_ret_t ret;
    kadm5_log_context *log_context = &context->log_context;

    sp = FUNC3();
    ret = FUNC2 (context, sp, kadm_nop);
    if (ret) {
	FUNC4 (sp);
	return ret;
    }
    FUNC5 (sp, 0);
    FUNC5 (sp, 0);
    ret = FUNC1 (log_context, sp);
    if (ret) {
	FUNC4 (sp);
	return ret;
    }
    ret = FUNC0 (log_context, sp);
    FUNC4 (sp);

    return ret;
}