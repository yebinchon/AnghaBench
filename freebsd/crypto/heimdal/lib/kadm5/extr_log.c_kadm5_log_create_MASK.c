#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  krb5_storage ;
struct TYPE_8__ {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ krb5_data ;
struct TYPE_9__ {int /*<<< orphan*/  context; int /*<<< orphan*/  log_context; } ;
typedef  TYPE_2__ kadm5_server_context ;
typedef  scalar_t__ kadm5_ret_t ;
typedef  int /*<<< orphan*/  kadm5_log_context ;
typedef  int /*<<< orphan*/  hdb_entry ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kadm_create ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

kadm5_ret_t
FUNC10 (kadm5_server_context *context,
		  hdb_entry *ent)
{
    krb5_storage *sp;
    kadm5_ret_t ret;
    krb5_data value;
    kadm5_log_context *log_context = &context->log_context;

    sp = FUNC6();
    ret = FUNC0 (context->context, ent, &value);
    if (ret) {
	FUNC7(sp);
	return ret;
    }
    ret = FUNC4 (context, sp, kadm_create);
    if (ret) {
	FUNC5 (&value);
	FUNC7(sp);
	return ret;
    }
    FUNC9 (sp, value.length);
    FUNC8(sp, value.data, value.length);
    FUNC9 (sp, value.length);
    FUNC5 (&value);
    ret = FUNC3 (log_context, sp);
    if (ret) {
	FUNC7 (sp);
	return ret;
    }
    ret = FUNC2 (log_context, sp);
    FUNC7 (sp);
    if (ret)
	return ret;
    ret = FUNC1 (context);
    return ret;
}