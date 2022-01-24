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
typedef  int off_t ;
typedef  int /*<<< orphan*/  krb5_storage ;
typedef  int /*<<< orphan*/  krb5_principal ;
struct TYPE_9__ {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ krb5_data ;
struct TYPE_10__ {int /*<<< orphan*/  context; int /*<<< orphan*/  log_context; } ;
typedef  TYPE_2__ kadm5_server_context ;
typedef  scalar_t__ kadm5_ret_t ;
typedef  int /*<<< orphan*/  kadm5_log_context ;
typedef  int /*<<< orphan*/  hdb_entry ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_CUR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kadm_rename ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

kadm5_ret_t
FUNC13 (kadm5_server_context *context,
		  krb5_principal source,
		  hdb_entry *ent)
{
    krb5_storage *sp;
    kadm5_ret_t ret;
    off_t off;
    off_t len;
    krb5_data value;
    kadm5_log_context *log_context = &context->log_context;

    FUNC6(&value);

    sp = FUNC7();
    ret = FUNC0 (context->context, ent, &value);
    if (ret)
	goto failed;

    ret = FUNC4 (context, sp, kadm_rename);
    if (ret)
	goto failed;

    ret = FUNC11 (sp, 0);
    if (ret)
	goto failed;
    off = FUNC9 (sp, 0, SEEK_CUR);
    ret = FUNC12 (sp, source);
    if (ret)
	goto failed;

    FUNC10(sp, value.data, value.length);
    len = FUNC9 (sp, 0, SEEK_CUR) - off;

    FUNC9(sp, -(len + 4), SEEK_CUR);
    ret = FUNC11 (sp, len);
    if (ret)
	goto failed;

    FUNC9(sp, len, SEEK_CUR);
    ret = FUNC11 (sp, len);
    if (ret)
	goto failed;

    ret = FUNC3 (log_context, sp);
    if (ret)
	goto failed;

    ret = FUNC2 (log_context, sp);
    if (ret)
	goto failed;
    FUNC8 (sp);
    FUNC5 (&value);

    return FUNC1 (context);

failed:
    FUNC5(&value);
    FUNC8(sp);
    return ret;
}