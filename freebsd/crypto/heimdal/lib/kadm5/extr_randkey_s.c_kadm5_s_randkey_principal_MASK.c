#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;
typedef  struct TYPE_21__   TYPE_11__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  krb5_principal ;
typedef  int /*<<< orphan*/  krb5_keyblock ;
struct TYPE_22__ {TYPE_3__* db; int /*<<< orphan*/  context; } ;
typedef  TYPE_1__ kadm5_server_context ;
typedef  scalar_t__ kadm5_ret_t ;
struct TYPE_21__ {int /*<<< orphan*/  kvno; } ;
struct TYPE_23__ {TYPE_11__ entry; } ;
typedef  TYPE_2__ hdb_entry_ex ;
typedef  int /*<<< orphan*/  ent ;
struct TYPE_24__ {int /*<<< orphan*/  (* hdb_close ) (int /*<<< orphan*/ ,TYPE_3__*) ;scalar_t__ (* hdb_store ) (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,TYPE_2__*) ;scalar_t__ (* hdb_fetch_kvno ) (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,TYPE_2__*) ;scalar_t__ (* hdb_open ) (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int HDB_F_ADMIN_DATA ; 
 int HDB_F_GET_ANY ; 
 int /*<<< orphan*/  HDB_F_REPLACE ; 
 int KADM5_KEY_DATA ; 
 int KADM5_KVNO ; 
 int KADM5_MOD_NAME ; 
 int KADM5_MOD_TIME ; 
 int KADM5_PRINCIPAL ; 
 int KADM5_PW_EXPIRATION ; 
 int KADM5_TL_DATA ; 
 int /*<<< orphan*/  O_RDWR ; 
 scalar_t__ FUNC0 (TYPE_1__*,TYPE_11__*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (TYPE_1__*,TYPE_11__*,int /*<<< orphan*/ **,int*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,TYPE_3__*,TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_11__*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,TYPE_3__*) ; 

kadm5_ret_t
FUNC14(void *server_handle,
			  krb5_principal princ,
			  krb5_keyblock **new_keys,
			  int *n_keys)
{
    kadm5_server_context *context = server_handle;
    hdb_entry_ex ent;
    kadm5_ret_t ret;

    FUNC9(&ent, 0, sizeof(ent));
    ret = context->db->hdb_open(context->context, context->db, O_RDWR, 0);
    if(ret)
	return ret;
    ret = context->db->hdb_fetch_kvno(context->context, context->db, princ,
				      HDB_F_GET_ANY|HDB_F_ADMIN_DATA, 0, &ent);
    if(ret)
	goto out;

    ret = FUNC2 (context,
				    &ent.entry,
				    new_keys,
				    n_keys);
    if (ret)
	goto out2;
    ent.entry.kvno++;

    ret = FUNC3(context, &ent.entry);
    if(ret)
	goto out3;
    ret = FUNC0(context, &ent.entry);
    if (ret)
	goto out2;

    ret = FUNC6(context->context, context->db, &ent.entry);
    if (ret)
	goto out2;

    ret = context->db->hdb_store(context->context, context->db,
				 HDB_F_REPLACE, &ent);
    if (ret)
	goto out2;

    FUNC7 (context,
		      &ent.entry,
		      KADM5_PRINCIPAL | KADM5_MOD_NAME | KADM5_MOD_TIME |
		      KADM5_KEY_DATA | KADM5_KVNO | KADM5_PW_EXPIRATION |
		      KADM5_TL_DATA);

out3:
    if (ret) {
	int i;

	for (i = 0; i < *n_keys; ++i)
	    FUNC8 (context->context, &(*new_keys)[i]);
	FUNC4 (*new_keys);
	*new_keys = NULL;
	*n_keys = 0;
    }
out2:
    FUNC5(context->context, &ent);
out:
    context->db->hdb_close(context->context, context->db);
    return FUNC1(ret);
}