#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  krb5_storage ;
struct TYPE_9__ {scalar_t__ length; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ krb5_data ;
struct TYPE_10__ {int /*<<< orphan*/  context; int /*<<< orphan*/  log_context; } ;
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
 int /*<<< orphan*/  kadm_modify ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,scalar_t__) ; 

kadm5_ret_t
FUNC11 (kadm5_server_context *context,
		  hdb_entry *ent,
		  uint32_t mask)
{
    krb5_storage *sp;
    kadm5_ret_t ret;
    krb5_data value;
    uint32_t len;
    kadm5_log_context *log_context = &context->log_context;

    FUNC6(&value);

    sp = FUNC7();
    ret = FUNC0 (context->context, ent, &value);
    if (ret)
	goto failed;

    ret = FUNC4 (context, sp, kadm_modify);
    if (ret)
	goto failed;

    len = value.length + 4;
    ret = FUNC10 (sp, len);
    if (ret)
	goto failed;
    ret = FUNC10 (sp, mask);
    if (ret)
	goto failed;
    FUNC9 (sp, value.data, value.length);

    ret = FUNC10 (sp, len);
    if (ret)
	goto failed;
    ret = FUNC3 (log_context, sp);
    if (ret)
	goto failed;
    ret = FUNC2 (log_context, sp);
    if (ret)
	goto failed;
    FUNC5(&value);
    FUNC8 (sp);
    return FUNC1 (context);
failed:
    FUNC5(&value);
    FUNC8(sp);
    return ret;
}