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
struct prop_data {int sock; int /*<<< orphan*/ * auth_context; int /*<<< orphan*/  context; } ;
typedef  int /*<<< orphan*/  portstr ;
typedef  int /*<<< orphan*/  krb5_realm ;
typedef  int /*<<< orphan*/  krb5_principal ;
typedef  int /*<<< orphan*/  krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_data ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  krb5_ccache ;
typedef  int /*<<< orphan*/ * krb5_auth_context ;
typedef  int /*<<< orphan*/  HDB ;

/* Variables and functions */
 int AP_OPTS_MUTUAL_REQUIRED ; 
 int AP_OPTS_USE_SUBKEY ; 
 int /*<<< orphan*/  HPROP_NAME ; 
 int /*<<< orphan*/  HPROP_PORT ; 
 int /*<<< orphan*/  HPROP_VERSION ; 
 int /*<<< orphan*/  KRB5_NT_SRV_HST ; 
 int NI_MAXSERV ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int,struct prop_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ local_realm ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC18 (char*,int,char*,int) ; 
 char* FUNC19 (char*,char) ; 

__attribute__((used)) static int
FUNC20 (krb5_context context, int type,
		    const char *database_name,
		    HDB *db, krb5_ccache ccache,
		    int optidx, int argc, char **argv)
{
    krb5_principal server;
    krb5_error_code ret;
    int i, failed = 0;

    for(i = optidx; i < argc; i++){
	krb5_auth_context auth_context;
	int fd;
	struct prop_data pd;
	krb5_data data;

	char *port, portstr[NI_MAXSERV];
	char *host = argv[i];

	port = FUNC19(host, ':');
	if(port == NULL) {
	    FUNC18(portstr, sizeof(portstr), "%u",
		     FUNC16(FUNC7 (context, "hprop", "tcp",
					       HPROP_PORT)));
	    port = portstr;
	} else
	    *port++ = '\0';

	fd = FUNC17(context, host, port);
	if(fd < 0) {
	    failed++;
	    FUNC12 (context, errno, "connect %s", host);
	    continue;
	}

	ret = FUNC11(context, argv[i],
				      HPROP_NAME, KRB5_NT_SRV_HST, &server);
	if(ret) {
	    failed++;
	    FUNC12(context, ret, "krb5_sname_to_principal(%s)", host);
	    FUNC0(fd);
	    continue;
	}

        if (local_realm) {
            krb5_realm my_realm;
            FUNC6(context,&my_realm);
            FUNC8(context,server,my_realm);
	    FUNC15(my_realm);
        }

	auth_context = NULL;
	ret = FUNC10(context,
			    &auth_context,
			    &fd,
			    HPROP_VERSION,
			    NULL,
			    server,
			    AP_OPTS_MUTUAL_REQUIRED | AP_OPTS_USE_SUBKEY,
			    NULL, /* in_data */
			    NULL, /* in_creds */
			    ccache,
			    NULL,
			    NULL,
			    NULL);

	FUNC5(context, server);

	if(ret) {
	    failed++;
	    FUNC12(context, ret, "krb5_sendauth (%s)", host);
	    FUNC0(fd);
	    goto next_host;
	}

	pd.context      = context;
	pd.auth_context = auth_context;
	pd.sock         = fd;

	ret = FUNC1 (context, database_name, db, type, &pd);
	if (ret) {
	    FUNC13(context, "iterate to host %s failed", host);
	    failed++;
	    goto next_host;
	}

	FUNC4 (&data);
	ret = FUNC14(context, auth_context, &fd, &data);
	if(ret) {
	    FUNC12(context, ret, "krb5_write_priv_message");
	    failed++;
	    goto next_host;
	}

	ret = FUNC9(context, auth_context, &fd, &data);
	if(ret) {
	    FUNC12(context, ret, "krb5_read_priv_message: %s", host);
	    failed++;
	    goto next_host;
	} else
	    FUNC3 (&data);

    next_host:
	FUNC2(context, auth_context);
	FUNC0(fd);
    }
    if (failed)
	return 1;
    return 0;
}