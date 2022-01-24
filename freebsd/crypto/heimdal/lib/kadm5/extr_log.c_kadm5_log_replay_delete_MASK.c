#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  krb5_storage ;
typedef  int /*<<< orphan*/  krb5_principal ;
typedef  scalar_t__ krb5_error_code ;
struct TYPE_4__ {int /*<<< orphan*/  context; TYPE_2__* db; } ;
typedef  TYPE_1__ kadm5_server_context ;
typedef  scalar_t__ kadm5_ret_t ;
struct TYPE_5__ {scalar_t__ (* hdb_remove ) (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,char*,long) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static kadm5_ret_t
FUNC4 (kadm5_server_context *context,
			 uint32_t ver,
			 uint32_t len,
			 krb5_storage *sp)
{
    krb5_error_code ret;
    krb5_principal principal;

    ret = FUNC1 (sp, &principal);
    if (ret) {
	FUNC2(context->context,  ret, "Failed to read deleted "
			       "principal from log version: %ld",  (long)ver);
	return ret;
    }

    ret = context->db->hdb_remove(context->context, context->db, principal);
    FUNC0 (context->context, principal);
    return ret;
}