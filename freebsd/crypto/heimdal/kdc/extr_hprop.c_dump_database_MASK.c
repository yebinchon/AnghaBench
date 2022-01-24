#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct prop_data {int /*<<< orphan*/  sock; int /*<<< orphan*/ * auth_context; int /*<<< orphan*/  context; } ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_data ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  HDB ;

/* Variables and functions */
 int /*<<< orphan*/  STDOUT_FILENO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int,struct prop_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5 (krb5_context context, int type,
	       const char *database_name, HDB *db)
{
    krb5_error_code ret;
    struct prop_data pd;
    krb5_data data;

    pd.context      = context;
    pd.auth_context = NULL;
    pd.sock         = STDOUT_FILENO;

    ret = FUNC0 (context, database_name, db, type, &pd);
    if (ret)
	FUNC3(context, 1, "iterate failure");
    FUNC1 (&data);
    ret = FUNC4 (context, &pd.sock, &data);
    if (ret)
	FUNC2(context, 1, ret, "krb5_write_message");

    return 0;
}