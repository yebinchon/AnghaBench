#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct foreach_data {char const* exp; char** princs; int count; int /*<<< orphan*/  exp2; } ;
typedef  int /*<<< orphan*/  krb5_realm ;
struct TYPE_6__ {TYPE_2__* db; int /*<<< orphan*/  context; } ;
typedef  TYPE_1__ kadm5_server_context ;
typedef  scalar_t__ kadm5_ret_t ;
struct TYPE_7__ {scalar_t__ (* hdb_open ) (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* hdb_close ) (int /*<<< orphan*/ ,TYPE_2__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  HDB_F_ADMIN_DATA ; 
 int /*<<< orphan*/  O_RDWR ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (struct foreach_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  foreach ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct foreach_data*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char**,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_2__*) ; 

kadm5_ret_t
FUNC10(void *server_handle,
		       const char *expression,
		       char ***princs,
		       int *count)
{
    struct foreach_data d;
    kadm5_server_context *context = server_handle;
    kadm5_ret_t ret;
    ret = context->db->hdb_open(context->context, context->db, O_RDWR, 0);
    if(ret) {
	FUNC7(context->context, ret, "opening database");
	return ret;
    }
    d.exp = expression;
    {
	krb5_realm r;
	FUNC6(context->context, &r);
	FUNC2(&d.exp2, "%s@%d", expression, r);
	FUNC3(r);
    }
    d.princs = NULL;
    d.count = 0;
    ret = FUNC4(context->context, context->db, HDB_F_ADMIN_DATA, foreach, &d);
    context->db->hdb_close(context->context, context->db);
    if(ret == 0)
	ret = FUNC1(&d, NULL);
    if(ret == 0){
	*princs = d.princs;
	*count = d.count - 1;
    }else
	FUNC5(context, d.princs, &d.count);
    FUNC3(d.exp2);
    return FUNC0(ret);
}