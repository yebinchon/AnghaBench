#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_6__ ;
typedef  struct TYPE_29__   TYPE_5__ ;
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  krb5_storage ;
typedef  int krb5_error_code ;
struct TYPE_27__ {char* data; scalar_t__ length; } ;
typedef  TYPE_3__ krb5_data ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  krb5_auth_context ;
struct TYPE_25__ {int /*<<< orphan*/  stash_file; } ;
struct TYPE_28__ {TYPE_2__* db; int /*<<< orphan*/  context; TYPE_1__ config; } ;
typedef  TYPE_4__ kadm5_server_context ;
typedef  scalar_t__ int32_t ;
struct TYPE_29__ {int /*<<< orphan*/  entry; } ;
typedef  TYPE_5__ hdb_entry_ex ;
typedef  int /*<<< orphan*/  entry ;
struct TYPE_30__ {int (* hdb_open ) (int /*<<< orphan*/ ,TYPE_6__*,int,int) ;int (* hdb_store ) (int /*<<< orphan*/ ,TYPE_6__*,int /*<<< orphan*/ ,TYPE_5__*) ;int (* hdb_rename ) (int /*<<< orphan*/ ,TYPE_6__*,int /*<<< orphan*/ ) ;int (* hdb_close ) (int /*<<< orphan*/ ,TYPE_6__*) ;int (* hdb_destroy ) (int /*<<< orphan*/ ,TYPE_6__*) ;} ;
struct TYPE_26__ {int /*<<< orphan*/  hdb_name; } ;
typedef  TYPE_6__ HDB ;

/* Variables and functions */
 scalar_t__ NOW_YOU_HAVE ; 
 scalar_t__ ONE_PRINC ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int O_TRUNC ; 
 int /*<<< orphan*/  FUNC0 (char**,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,TYPE_6__**,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_6__*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_4__*) ; 
 int FUNC7 (TYPE_4__*) ; 
 int FUNC8 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,char*,...) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int FUNC19 (int /*<<< orphan*/ ,TYPE_6__*,int,int) ; 
 int FUNC20 (int /*<<< orphan*/ ,TYPE_6__*,int /*<<< orphan*/ ,TYPE_5__*) ; 
 int FUNC21 (int /*<<< orphan*/ ,TYPE_6__*,int /*<<< orphan*/ ) ; 
 int FUNC22 (int /*<<< orphan*/ ,TYPE_6__*) ; 
 int FUNC23 (int /*<<< orphan*/ ,TYPE_6__*) ; 

__attribute__((used)) static krb5_error_code
FUNC24 (krb5_context context, int fd,
		    kadm5_server_context *server_context,
		    krb5_auth_context auth_context)
{
    int ret;
    krb5_data data;
    int32_t vno = 0;
    int32_t opcode;
    krb5_storage *sp;

    char *dbname;
    HDB *mydb;

    FUNC17(context, "receive complete database");

    FUNC0(&dbname, "%d-NEW", server_context->db->hdb_name);
    ret = FUNC2(context, &mydb, dbname);
    if(ret)
	FUNC10(context,1, ret, "hdb_create");
    FUNC1(dbname);

    ret = FUNC4 (context,
				  mydb, server_context->config.stash_file);
    if(ret)
	FUNC10(context,1, ret, "hdb_set_master_keyfile");

    /* I really want to use O_EXCL here, but given that I can't easily clean
       up on error, I won't */
    ret = mydb->hdb_open(context, mydb, O_RDWR | O_CREAT | O_TRUNC, 0600);
    if (ret)
	FUNC10 (context, 1, ret, "db->open");

    sp = NULL;
    do {
	ret = FUNC12(context, auth_context, &fd, &data);

	if (ret) {
	    FUNC16 (context, ret, "krb5_read_priv_message");
	    goto cleanup;
	}

	sp = FUNC15 (&data);
	if (sp == NULL)
	    FUNC11 (context, 1, "krb5_storage_from_data");
	FUNC13 (sp, &opcode);
	if (opcode == ONE_PRINC) {
	    krb5_data fake_data;
	    hdb_entry_ex entry;

	    FUNC14(sp);

	    fake_data.data   = (char *)data.data + 4;
	    fake_data.length = data.length - 4;

	    FUNC18(&entry, 0, sizeof(entry));

	    ret = FUNC5 (context, &fake_data, &entry.entry);
	    if (ret)
		FUNC10 (context, 1, ret, "hdb_value2entry");
	    ret = mydb->hdb_store(server_context->context,
				  mydb,
				  0, &entry);
	    if (ret)
		FUNC10 (context, 1, ret, "hdb_store");

	    FUNC3 (context, &entry);
	    FUNC9 (&data);
	} else if (opcode == NOW_YOU_HAVE)
	    ;
	else
	    FUNC11 (context, 1, "strange opcode %d", opcode);
    } while (opcode == ONE_PRINC);

    if (opcode != NOW_YOU_HAVE)
	FUNC11 (context, 1, "receive_everything: strange %d", opcode);

    FUNC13 (sp, &vno);
    FUNC14(sp);

    ret = FUNC7 (server_context);
    if (ret)
	FUNC10(context, 1, ret, "kadm5_log_reinit");

    ret = FUNC8 (server_context, vno - 1);
    if (ret)
	FUNC10 (context, 1, ret, "kadm5_log_set_version");

    ret = FUNC6 (server_context);
    if (ret)
	FUNC10 (context, 1, ret, "kadm5_log_nop");

    ret = mydb->hdb_rename (context, mydb, server_context->db->hdb_name);
    if (ret)
	FUNC10 (context, 1, ret, "db->rename");

 cleanup:
    FUNC9 (&data);

    ret = mydb->hdb_close (context, mydb);
    if (ret)
	FUNC10 (context, 1, ret, "db->close");

    ret = mydb->hdb_destroy (context, mydb);
    if (ret)
	FUNC10 (context, 1, ret, "db->destroy");

    FUNC17(context, "receive complete database, version %ld", (long)vno);
    return ret;
}