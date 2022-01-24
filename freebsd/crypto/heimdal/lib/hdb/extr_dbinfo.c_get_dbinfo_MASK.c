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
struct hdb_dbinfo {int /*<<< orphan*/  const* binding; void* log_file; void* acl_file; void* mkey_file; void* realm; void* dbname; void* label; } ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  krb5_config_binding ;

/* Variables and functions */
 int ENOMEM ; 
 struct hdb_dbinfo* FUNC0 (int,int) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*) ; 
 void* FUNC3 (char const*) ; 

__attribute__((used)) static int
FUNC4(krb5_context context,
	   const krb5_config_binding *db_binding,
	   const char *label,
	   struct hdb_dbinfo **db)
{
    struct hdb_dbinfo *di;
    const char *p;

    *db = NULL;

    p = FUNC1(context, db_binding, "dbname", NULL);
    if(p == NULL)
	return 0;

    di = FUNC0(1, sizeof(*di));
    if (di == NULL) {
	FUNC2(context, ENOMEM, "malloc: out of memory");
	return ENOMEM;
    }
    di->label = FUNC3(label);
    di->dbname = FUNC3(p);

    p = FUNC1(context, db_binding, "realm", NULL);
    if(p)
	di->realm = FUNC3(p);
    p = FUNC1(context, db_binding, "mkey_file", NULL);
    if(p)
	di->mkey_file = FUNC3(p);
    p = FUNC1(context, db_binding, "acl_file", NULL);
    if(p)
	di->acl_file = FUNC3(p);
    p = FUNC1(context, db_binding, "log_file", NULL);
    if(p)
	di->log_file = FUNC3(p);

    di->binding = db_binding;

    *db = di;
    return 0;
}