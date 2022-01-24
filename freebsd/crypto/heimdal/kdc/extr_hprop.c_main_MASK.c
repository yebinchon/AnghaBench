#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/ * krb5_ccache ;
struct TYPE_7__ {scalar_t__ (* hdb_open ) (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* hdb_destroy ) (int /*<<< orphan*/ ,TYPE_1__*) ;} ;
typedef  TYPE_1__ HDB ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
#define  HPROP_HEIMDAL 129 
#define  HPROP_MIT_DUMP 128 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  args ; 
 int /*<<< orphan*/ * database ; 
 scalar_t__ decrypt_flag ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ encrypt_flag ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char**,int*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,TYPE_1__**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ help_flag ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ local_realm ; 
 int /*<<< orphan*/  mkey5 ; 
 int /*<<< orphan*/  mkeyfile ; 
 int /*<<< orphan*/  num_args ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int,int,char**) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/ * source_type ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ to_stdout ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 scalar_t__ version_flag ; 

int
FUNC20(int argc, char **argv)
{
    krb5_error_code ret;
    krb5_context context;
    krb5_ccache ccache = NULL;
    HDB *db = NULL;
    int optidx = 0;

    int type, exit_code;

    FUNC16(argv[0]);

    if(FUNC3(args, num_args, argc, argv, &optidx))
	FUNC19(1);

    if(help_flag)
	FUNC19(0);

    if(version_flag){
	FUNC14(NULL);
	FUNC1(0);
    }

    ret = FUNC11(&context);
    if(ret)
	FUNC1(1);

    /* We may be reading an old database encrypted with a DES master key. */
    ret = FUNC6(context, 1);
    if(ret)
        FUNC8(context, 1, ret, "krb5_allow_weak_crypto");

    if(local_realm)
	FUNC12(context, local_realm);

    if(encrypt_flag && decrypt_flag)
	FUNC9(context, 1,
		  "only one of `--encrypt' and `--decrypt' is meaningful");

    if(source_type != NULL) {
	type = FUNC13(source_type);
	if(type == 0)
	    FUNC9(context, 1, "unknown source type `%s'", source_type);
    } else
	type = HPROP_HEIMDAL;

    if(!to_stdout)
	FUNC2(context, &ccache);

    if(decrypt_flag || encrypt_flag) {
	ret = FUNC5(context, mkeyfile, &mkey5);
	if(ret && ret != ENOENT)
	    FUNC8(context, 1, ret, "hdb_read_master_key");
	if(ret)
	    FUNC9(context, 1, "No master key file found");
    }

    switch(type) {
    case HPROP_MIT_DUMP:
	if (database == NULL)
	    FUNC9(context, 1, "no dump file specified");
	break;
    case HPROP_HEIMDAL:
	ret = FUNC4 (context, &db, database);
	if(ret)
	    FUNC8(context, 1, ret, "hdb_create: %s", database);
	ret = db->hdb_open(context, db, O_RDONLY, 0);
	if(ret)
	    FUNC8(context, 1, ret, "db->hdb_open");
	break;
    default:
	FUNC9(context, 1, "unknown dump type `%d'", type);
	break;
    }

    if (to_stdout)
	exit_code = FUNC0 (context, type, database, db);
    else
	exit_code = FUNC15 (context, type, database,
					db, ccache, optidx, argc, argv);

    if(ccache != NULL)
	FUNC7(context, ccache);

    if(db != NULL)
	(*db->hdb_destroy)(context, db);

    FUNC10(context);
    return exit_code;
}