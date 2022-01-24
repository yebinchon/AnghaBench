#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;
typedef  struct TYPE_24__   TYPE_14__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  krb5_principal ;
struct TYPE_26__ {TYPE_4__* db; int /*<<< orphan*/  context; } ;
typedef  TYPE_2__ kadm5_server_context ;
typedef  scalar_t__ kadm5_ret_t ;
struct TYPE_25__ {size_t len; int /*<<< orphan*/ * val; } ;
struct TYPE_24__ {int /*<<< orphan*/  kvno; TYPE_1__ keys; } ;
struct TYPE_27__ {TYPE_14__ entry; } ;
typedef  TYPE_3__ hdb_entry_ex ;
typedef  int /*<<< orphan*/  ent ;
struct TYPE_28__ {int hdb_capability_flags; int /*<<< orphan*/  (* hdb_close ) (int /*<<< orphan*/ ,TYPE_4__*) ;scalar_t__ (* hdb_store ) (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ,TYPE_3__*) ;scalar_t__ (* hdb_password ) (int /*<<< orphan*/ ,TYPE_4__*,TYPE_3__*,char const*,int) ;scalar_t__ (* hdb_fetch_kvno ) (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,TYPE_3__*) ;scalar_t__ (* hdb_open ) (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  Key ;

/* Variables and functions */
 int HDB_CAP_F_HANDLE_PASSWORDS ; 
 int HDB_F_ADMIN_DATA ; 
 int HDB_F_DECRYPT ; 
 int HDB_F_GET_ANY ; 
 int /*<<< orphan*/  HDB_F_REPLACE ; 
 int KADM5_KEY_DATA ; 
 int KADM5_KVNO ; 
 int KADM5_MOD_NAME ; 
 int KADM5_MOD_TIME ; 
 scalar_t__ KADM5_PASS_REUSE ; 
 int KADM5_PRINCIPAL ; 
 int KADM5_PW_EXPIRATION ; 
 int KADM5_TL_DATA ; 
 int /*<<< orphan*/  O_RDWR ; 
 scalar_t__ FUNC0 (TYPE_2__*,TYPE_14__*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_2__*,TYPE_14__*,char const*) ; 
 scalar_t__ FUNC5 (TYPE_2__*,TYPE_14__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,TYPE_4__*,TYPE_14__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,TYPE_14__*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,TYPE_3__*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,TYPE_4__*,TYPE_3__*,char const*,int) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,TYPE_4__*) ; 

__attribute__((used)) static kadm5_ret_t
FUNC16(void *server_handle,
       krb5_principal princ,
       const char *password,
       int cond)
{
    kadm5_server_context *context = server_handle;
    hdb_entry_ex ent;
    kadm5_ret_t ret;
    Key *keys;
    size_t num_keys;
    int existsp = 0;

    FUNC10(&ent, 0, sizeof(ent));
    ret = context->db->hdb_open(context->context, context->db, O_RDWR, 0);
    if(ret)
	return ret;

    ret = context->db->hdb_fetch_kvno(context->context, context->db, princ,
				      HDB_F_DECRYPT|HDB_F_GET_ANY|HDB_F_ADMIN_DATA, 0, &ent);
    if(ret)
	goto out;

    if (context->db->hdb_capability_flags & HDB_CAP_F_HANDLE_PASSWORDS) {
	ret = context->db->hdb_password(context->context, context->db,
					&ent, password, cond);
	if (ret)
	    goto out2;
    } else {

	num_keys = ent.entry.keys.len;
	keys     = ent.entry.keys.val;

	ent.entry.keys.len = 0;
	ent.entry.keys.val = NULL;

	ret = FUNC4(context, &ent.entry, password);
	if(ret) {
	    FUNC3 (context->context, num_keys, keys);
	    goto out2;
	}

	if (cond)
	    existsp = FUNC2 (ent.entry.keys.val,
					  ent.entry.keys.len,
					  keys, num_keys);
	FUNC3 (context->context, num_keys, keys);

	if (existsp) {
	    ret = KADM5_PASS_REUSE;
	    FUNC9(context->context, ret,
				   "Password reuse forbidden");
	    goto out2;
	}

	ret = FUNC7(context->context, context->db, &ent.entry);
	if (ret)
	    goto out2;
    }
    ent.entry.kvno++;

    ret = FUNC5(context, &ent.entry);
    if(ret)
	goto out2;

    ret = FUNC0(context, &ent.entry);
    if (ret)
	goto out2;

    ret = context->db->hdb_store(context->context, context->db,
				 HDB_F_REPLACE, &ent);
    if (ret)
	goto out2;

    FUNC8 (context,
		      &ent.entry,
		      KADM5_PRINCIPAL | KADM5_MOD_NAME | KADM5_MOD_TIME |
		      KADM5_KEY_DATA | KADM5_KVNO | KADM5_PW_EXPIRATION |
		      KADM5_TL_DATA);

out2:
    FUNC6(context->context, &ent);
out:
    context->db->hdb_close(context->context, context->db);
    return FUNC1(ret);
}