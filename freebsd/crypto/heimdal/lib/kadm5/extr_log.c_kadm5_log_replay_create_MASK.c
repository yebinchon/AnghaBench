#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  krb5_storage ;
typedef  scalar_t__ krb5_error_code ;
struct TYPE_12__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ krb5_data ;
struct TYPE_13__ {int /*<<< orphan*/  context; TYPE_4__* db; } ;
typedef  TYPE_2__ kadm5_server_context ;
typedef  scalar_t__ kadm5_ret_t ;
struct TYPE_14__ {int /*<<< orphan*/  entry; } ;
typedef  TYPE_3__ hdb_entry_ex ;
typedef  int /*<<< orphan*/  ent ;
struct TYPE_15__ {scalar_t__ (* hdb_store ) (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ,TYPE_3__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ,TYPE_3__*) ; 

__attribute__((used)) static kadm5_ret_t
FUNC8 (kadm5_server_context *context,
			 uint32_t ver,
			 uint32_t len,
			 krb5_storage *sp)
{
    krb5_error_code ret;
    krb5_data data;
    hdb_entry_ex ent;

    FUNC6(&ent, 0, sizeof(ent));

    ret = FUNC2 (&data, len);
    if (ret) {
	FUNC4(context->context, ret, "out of memory");
	return ret;
    }
    FUNC5 (sp, data.data, len);
    ret = FUNC1 (context->context, &data, &ent.entry);
    FUNC3(&data);
    if (ret) {
	FUNC4(context->context, ret,
			       "Unmarshaling hdb entry failed");
	return ret;
    }
    ret = context->db->hdb_store(context->context, context->db, 0, &ent);
    FUNC0 (context->context, &ent);
    return ret;
}