#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_9__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_18__ {int /*<<< orphan*/  context; TYPE_4__* db; } ;
typedef  TYPE_2__ kadm5_server_context ;
typedef  scalar_t__ kadm5_ret_t ;
typedef  int /*<<< orphan*/  kadm5_principal_ent_t ;
struct TYPE_17__ {int /*<<< orphan*/ * val; scalar_t__ len; } ;
struct TYPE_21__ {int kvno; TYPE_1__ keys; } ;
struct TYPE_19__ {TYPE_9__ entry; } ;
typedef  TYPE_3__ hdb_entry_ex ;
struct TYPE_20__ {int /*<<< orphan*/  (* hdb_close ) (int /*<<< orphan*/ ,TYPE_4__*) ;scalar_t__ (* hdb_store ) (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ,TYPE_3__*) ;scalar_t__ (* hdb_open ) (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int KADM5_AUX_ATTRIBUTES ; 
 int KADM5_FAIL_AUTH_COUNT ; 
 int KADM5_KEY_DATA ; 
 int KADM5_KVNO ; 
 int KADM5_LAST_FAILED ; 
 int KADM5_LAST_PWD_CHANGE ; 
 int KADM5_LAST_SUCCESS ; 
 int KADM5_MKVNO ; 
 int KADM5_MOD_NAME ; 
 int KADM5_MOD_TIME ; 
 int KADM5_POLICY_CLR ; 
 int /*<<< orphan*/  KADM5_PRINCIPAL ; 
 int /*<<< orphan*/  O_RDWR ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (TYPE_2__*,TYPE_9__*,char const*) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int,TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,TYPE_4__*,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_9__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_4__*) ; 

kadm5_ret_t
FUNC9(void *server_handle,
			 kadm5_principal_ent_t princ,
			 uint32_t mask,
			 const char *password)
{
    kadm5_ret_t ret;
    hdb_entry_ex ent;
    kadm5_server_context *context = server_handle;

    ret = FUNC2(context, princ, mask, &ent,
			   KADM5_PRINCIPAL,
			   KADM5_LAST_PWD_CHANGE | KADM5_MOD_TIME
			   | KADM5_MOD_NAME | KADM5_MKVNO
			   | KADM5_AUX_ATTRIBUTES | KADM5_KEY_DATA
			   | KADM5_POLICY_CLR | KADM5_LAST_SUCCESS
			   | KADM5_LAST_FAILED | KADM5_FAIL_AUTH_COUNT);
    if(ret)
	goto out;

    if ((mask & KADM5_KVNO) == 0)
	ent.entry.kvno = 1;

    ent.entry.keys.len = 0;
    ent.entry.keys.val = NULL;

    ret = FUNC1(context, &ent.entry, password);
    if (ret)
	goto out;

    ret = FUNC4(context->context, context->db, &ent.entry);
    if (ret)
	goto out;

    ret = context->db->hdb_open(context->context, context->db, O_RDWR, 0);
    if(ret)
	goto out;
    ret = context->db->hdb_store(context->context, context->db, 0, &ent);
    context->db->hdb_close(context->context, context->db);
    if (ret)
	goto out;

    FUNC5 (context, &ent.entry);

 out:
    FUNC3(context->context, &ent);
    return FUNC0(ret);
}