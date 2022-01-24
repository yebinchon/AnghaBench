#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_14__ {int /*<<< orphan*/  fd; int /*<<< orphan*/  ac; int /*<<< orphan*/  version; } ;
typedef  TYPE_1__ slave ;
typedef  int /*<<< orphan*/  krb5_storage ;
typedef  int krb5_error_code ;
struct TYPE_15__ {char* data; int length; } ;
typedef  TYPE_2__ krb5_data ;
typedef  int /*<<< orphan*/  krb5_context ;
struct TYPE_16__ {int (* hdb_open ) (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* hdb_destroy ) (int /*<<< orphan*/ ,TYPE_3__*) ;int /*<<< orphan*/  (* hdb_close ) (int /*<<< orphan*/ ,TYPE_3__*) ;} ;
typedef  TYPE_3__ HDB ;

/* Variables and functions */
 int /*<<< orphan*/  HDB_F_ADMIN_DATA ; 
 int /*<<< orphan*/  NOW_YOU_HAVE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  TELL_YOU_EVERYTHING ; 
 int FUNC0 (int /*<<< orphan*/ ,TYPE_3__**,char const*) ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,char*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  prop_one ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int FUNC11 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,TYPE_3__*) ; 

__attribute__((used)) static int
FUNC14 (krb5_context context, slave *s,
	       const char *database, uint32_t current_version)
{
    krb5_error_code ret;
    krb5_storage *sp;
    HDB *db;
    krb5_data data;
    char buf[8];

    ret = FUNC0 (context, &db, database);
    if (ret)
	FUNC2 (context, 1, ret, "hdb_create: %s", database);
    ret = db->hdb_open (context, db, O_RDONLY, 0);
    if (ret)
	FUNC2 (context, 1, ret, "db->open");

    sp = FUNC5 (buf, 4);
    if (sp == NULL)
	FUNC3 (context, 1, "krb5_storage_from_mem");
    FUNC6 (sp, TELL_YOU_EVERYTHING);
    FUNC4 (sp);

    data.data   = buf;
    data.length = 4;

    ret = FUNC8(context, s->ac, &s->fd, &data);

    if (ret) {
	FUNC7 (context, ret, "krb5_write_priv_message");
	FUNC9(context, s);
	return ret;
    }

    ret = FUNC1 (context, db, HDB_F_ADMIN_DATA, prop_one, s);
    if (ret) {
	FUNC7 (context, ret, "hdb_foreach");
	FUNC9(context, s);
	return ret;
    }

    (*db->hdb_close)(context, db);
    (*db->hdb_destroy)(context, db);

    sp = FUNC5 (buf, 8);
    if (sp == NULL)
	FUNC3 (context, 1, "krb5_storage_from_mem");
    FUNC6 (sp, NOW_YOU_HAVE);
    FUNC6 (sp, current_version);
    FUNC4 (sp);

    data.length = 8;

    s->version = current_version;

    ret = FUNC8(context, s->ac, &s->fd, &data);
    if (ret) {
	FUNC9(context, s);
	FUNC7 (context, ret, "krb5_write_priv_message");
	return ret;
    }

    FUNC10(s);

    return 0;
}