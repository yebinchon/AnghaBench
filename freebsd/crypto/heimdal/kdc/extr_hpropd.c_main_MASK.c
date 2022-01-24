#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_5__ ;
typedef  struct TYPE_29__   TYPE_4__ ;
typedef  struct TYPE_28__   TYPE_3__ ;
typedef  struct TYPE_27__   TYPE_2__ ;
typedef  struct TYPE_26__   TYPE_20__ ;
typedef  struct TYPE_25__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int /*<<< orphan*/  sa_family; } ;
typedef  int /*<<< orphan*/  ss ;
typedef  int socklen_t ;
struct TYPE_25__ {int /*<<< orphan*/  server; } ;
typedef  TYPE_1__ krb5_ticket ;
typedef  int /*<<< orphan*/  krb5_socket_t ;
typedef  int /*<<< orphan*/  krb5_principal ;
typedef  int /*<<< orphan*/  krb5_log_facility ;
typedef  int /*<<< orphan*/  krb5_keytab ;
typedef  scalar_t__ krb5_error_code ;
struct TYPE_27__ {scalar_t__ length; int /*<<< orphan*/ * data; } ;
typedef  TYPE_2__ krb5_data ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  TYPE_3__* krb5_authenticator ;
typedef  int /*<<< orphan*/ * krb5_auth_context ;
struct TYPE_26__ {int /*<<< orphan*/  principal; } ;
struct TYPE_29__ {TYPE_20__ entry; } ;
typedef  TYPE_4__ hdb_entry_ex ;
typedef  int /*<<< orphan*/  entry ;
typedef  int /*<<< orphan*/  addr_name ;
struct TYPE_30__ {scalar_t__ (* hdb_store ) (int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ ,TYPE_4__*) ;scalar_t__ (* hdb_rename ) (int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ *) ;scalar_t__ (* hdb_close ) (int /*<<< orphan*/ ,TYPE_5__*) ;scalar_t__ (* hdb_open ) (int /*<<< orphan*/ ,TYPE_5__*,int,int) ;} ;
struct TYPE_28__ {int /*<<< orphan*/  crealm; int /*<<< orphan*/  cname; } ;
typedef  TYPE_5__ HDB ;

/* Variables and functions */
 scalar_t__ HDB_ERR_EXISTS ; 
 scalar_t__ HEIM_ERR_EOF ; 
 int /*<<< orphan*/  HPROP_PORT ; 
 int /*<<< orphan*/  HPROP_VERSION ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int O_TRUNC ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  args ; 
 int /*<<< orphan*/  FUNC1 (char**,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * database ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ from_stdin ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char**,int*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,struct sockaddr*,int*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,TYPE_5__**,char*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  hdb_kt_ops ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_5__*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,TYPE_2__*,TYPE_20__*) ; 
 scalar_t__ help_flag ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int inetd_flag ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int,scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC27 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 scalar_t__ FUNC30 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 
 scalar_t__ FUNC31 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC34 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/ * ktname ; 
 int /*<<< orphan*/ * local_realm ; 
 int /*<<< orphan*/  FUNC37 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  num_args ; 
 scalar_t__ print_dump ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rk_INVALID_SOCKET ; 
 int /*<<< orphan*/  FUNC40 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC41 (char*) ; 
 int /*<<< orphan*/  FUNC42 (struct sockaddr*) ; 
 int /*<<< orphan*/  stdout ; 
 char* FUNC43 (char*) ; 
 int /*<<< orphan*/  FUNC44 (char*,char*,int) ; 
 scalar_t__ FUNC45 (char*,char*,int) ; 
 scalar_t__ FUNC46 (int /*<<< orphan*/ ,TYPE_5__*,int,int) ; 
 scalar_t__ FUNC47 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 scalar_t__ FUNC48 (int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC49 (int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ ,TYPE_4__*) ; 
 char* unparseable_name ; 
 int /*<<< orphan*/  FUNC50 (int) ; 
 scalar_t__ version_flag ; 

int
FUNC51(int argc, char **argv)
{
    krb5_error_code ret;
    krb5_context context;
    krb5_auth_context ac = NULL;
    krb5_principal c1, c2;
    krb5_authenticator authent;
    krb5_keytab keytab;
    krb5_socket_t sock = rk_INVALID_SOCKET;
    HDB *db = NULL;
    int optidx = 0;
    char *tmp_db;
    krb5_log_facility *fac;
    int nprincs;

    FUNC41(argv[0]);

    ret = FUNC20(&context);
    if(ret)
	FUNC3(1);

    ret = FUNC27(context, "hpropd", &fac);
    if(ret)
	FUNC2(1, "krb5_openlog");
    FUNC33(context, fac);

    if(FUNC5(args, num_args, argc, argv, &optidx))
	FUNC50(1);

    if(local_realm != NULL)
	FUNC32(context, local_realm);

    if(help_flag)
	FUNC50(0);
    if(version_flag) {
	FUNC39(NULL);
	FUNC3(0);
    }

    argc -= optidx;
    argv += optidx;

    if (argc != 0)
	FUNC50(1);

    if (database == NULL)
	database = FUNC8(context);

    if(from_stdin) {
	sock = STDIN_FILENO;
    } else {
	struct sockaddr_storage ss;
	struct sockaddr *sa = (struct sockaddr *)&ss;
	socklen_t sin_len = sizeof(ss);
	char addr_name[256];
	krb5_ticket *ticket;
	char *server;

	sock = STDIN_FILENO;
#ifdef SUPPORT_INETD
	if (inetd_flag == -1) {
	    if (getpeername (sock, sa, &sin_len) < 0) {
		inetd_flag = 0;
	    } else {
		inetd_flag = 1;
	    }
	}
#else
	inetd_flag = 0;
#endif
	if (!inetd_flag) {
	    FUNC38 (FUNC19 (context, "hprop", "tcp",
					    HPROP_PORT), &sock);
	}
	sin_len = sizeof(ss);
	if(FUNC6(sock, sa, &sin_len) < 0)
	    FUNC15(context, 1, errno, "getpeername");

	if (FUNC12(sa->sa_family,
		      FUNC42 (sa),
		      addr_name,
		      sizeof(addr_name)) == NULL)
	    FUNC44 (addr_name, "unknown address",
		     sizeof(addr_name));

	FUNC25(context, fac, 0, "Connection from %s", addr_name);

	ret = FUNC23(context, &hdb_kt_ops);
	if(ret)
	    FUNC15(context, 1, ret, "krb5_kt_register");

	if (ktname != NULL) {
	    ret = FUNC24(context, ktname, &keytab);
	    if (ret)
		FUNC15 (context, 1, ret, "krb5_kt_resolve %s", ktname);
	} else {
	    ret = FUNC22 (context, &keytab);
	    if (ret)
		FUNC15 (context, 1, ret, "krb5_kt_default");
	}

	ret = FUNC31(context, &ac, &sock, HPROP_VERSION, NULL,
			    0, keytab, &ticket);
	if(ret)
	    FUNC15(context, 1, ret, "krb5_recvauth");

	ret = FUNC34(context, ticket->server, &server);
	if (ret)
	    FUNC15(context, 1, ret, "krb5_unparse_name");
	if (FUNC45(server, "hprop/", 5) != 0)
	    FUNC16(context, 1, "ticket not for hprop (%s)", server);

	FUNC4(server);
	FUNC18 (context, ticket);

	ret = FUNC13(context, ac, &authent);
	if(ret)
	    FUNC15(context, 1, ret, "krb5_auth_con_getauthenticator");

	ret = FUNC26(context, &c1, NULL, "kadmin", "hprop", NULL);
	if(ret)
	    FUNC15(context, 1, ret, "krb5_make_principal");
	FUNC0(context, &c2,
					   authent->cname, authent->crealm);
	if(!FUNC28(context, c1, c2)) {
	    char *s;
	    ret = FUNC34(context, c2, &s);
	    if (ret)
		s = unparseable_name;
	    FUNC16(context, 1, "Unauthorized connection from %s", s);
	}
	FUNC17(context, c1);
	FUNC17(context, c2);

	ret = FUNC21(context, keytab);
	if(ret)
	    FUNC15(context, 1, ret, "krb5_kt_close");
    }

    if(!print_dump) {
	FUNC1(&tmp_db, "%s~", database);

	ret = FUNC7(context, &db, tmp_db);
	if(ret)
	    FUNC15(context, 1, ret, "hdb_create(%s)", tmp_db);
	ret = db->hdb_open(context, db, O_RDWR | O_CREAT | O_TRUNC, 0600);
	if(ret)
	    FUNC15(context, 1, ret, "hdb_open(%s)", tmp_db);
    }

    nprincs = 0;
    while(1){
	krb5_data data;
	hdb_entry_ex entry;

	if(from_stdin) {
	    ret = FUNC29(context, &sock, &data);
	    if(ret != 0 && ret != HEIM_ERR_EOF)
		FUNC15(context, 1, ret, "krb5_read_message");
	} else {
	    ret = FUNC30(context, ac, &sock, &data);
	    if(ret)
		FUNC15(context, 1, ret, "krb5_read_priv_message");
	}

	if(ret == HEIM_ERR_EOF || data.length == 0) {
	    if(!from_stdin) {
		data.data = NULL;
		data.length = 0;
		FUNC36(context, ac, &sock, &data);
	    }
	    if(!print_dump) {
		ret = db->hdb_close(context, db);
		if(ret)
		    FUNC15(context, 1, ret, "db_close");
		ret = db->hdb_rename(context, db, database);
		if(ret)
		    FUNC15(context, 1, ret, "db_rename");
	    }
	    break;
	}
	FUNC37(&entry, 0, sizeof(entry));
	ret = FUNC11(context, &data, &entry.entry);
	FUNC14(&data);
	if(ret)
	    FUNC15(context, 1, ret, "hdb_value2entry");
	if(print_dump)
	    FUNC10(context, db, &entry, stdout);
	else {
	    ret = db->hdb_store(context, db, 0, &entry);
	    if(ret == HDB_ERR_EXISTS) {
		char *s;
		ret = FUNC34(context, entry.entry.principal, &s);
		if (ret)
		    s = FUNC43(unparseable_name);
		FUNC35(context, "Entry exists: %s", s);
		FUNC4(s);
	    } else if(ret)
		FUNC15(context, 1, ret, "db_store");
	    else
		nprincs++;
	}
	FUNC9(context, &entry);
    }
    if (!print_dump)
	FUNC25(context, fac, 0, "Received %d principals", nprincs);

    if (inetd_flag == 0)
	FUNC40(sock);

    FUNC3(0);
}