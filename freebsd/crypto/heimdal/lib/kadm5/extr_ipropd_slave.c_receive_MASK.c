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
typedef  int /*<<< orphan*/  krb5_storage ;
typedef  int /*<<< orphan*/  krb5_context ;
struct TYPE_6__ {TYPE_2__* db; } ;
typedef  TYPE_1__ kadm5_server_context ;
struct TYPE_7__ {int (* hdb_open ) (int /*<<< orphan*/ ,TYPE_2__*,int,int) ;int (* hdb_close ) (int /*<<< orphan*/ ,TYPE_2__*) ;} ;

/* Variables and functions */
 int O_CREAT ; 
 int O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static void
FUNC4 (krb5_context context,
	 krb5_storage *sp,
	 kadm5_server_context *server_context)
{
    int ret;

    ret = server_context->db->hdb_open(context,
				       server_context->db,
				       O_RDWR | O_CREAT, 0600);
    if (ret)
	FUNC0 (context, 1, ret, "db->open");

    FUNC1 (context, sp, server_context);

    ret = server_context->db->hdb_close (context, server_context->db);
    if (ret)
	FUNC0 (context, 1, ret, "db->close");
}