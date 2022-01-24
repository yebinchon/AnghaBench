#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int u_char ;
struct TYPE_17__ {int s_addr; } ;
struct sockaddr_storage {unsigned short sin_port; TYPE_2__ sin_addr; } ;
struct sockaddr {int dummy; } ;
struct TYPE_19__ {int length; int /*<<< orphan*/ * value; } ;
struct TYPE_18__ {int length; int* value; } ;
struct TYPE_16__ {int length; int* value; } ;
struct gss_channel_bindings_struct {TYPE_4__ application_data; TYPE_3__ acceptor_address; void* acceptor_addrtype; TYPE_1__ initiator_address; void* initiator_addrtype; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  remote ;
typedef  scalar_t__ pid_t ;
typedef  int /*<<< orphan*/  local ;
typedef  int /*<<< orphan*/  gss_name_t ;
typedef  scalar_t__ gss_ctx_id_t ;
typedef  int /*<<< orphan*/  gss_cred_id_t ;
typedef  TYPE_5__* gss_buffer_t ;
struct TYPE_20__ {scalar_t__ length; char* value; } ;
typedef  TYPE_5__ gss_buffer_desc ;
typedef  int /*<<< orphan*/  gss_OID ;
typedef  int OM_uint32 ;

/* Variables and functions */
 void* GSS_C_AF_INET ; 
 int /*<<< orphan*/  GSS_C_INDEFINITE ; 
 int /*<<< orphan*/  GSS_C_INITIATE ; 
 int GSS_C_MUTUAL_FLAG ; 
 int /*<<< orphan*/  GSS_C_NO_BUFFER ; 
 scalar_t__ GSS_C_NO_CONTEXT ; 
 int /*<<< orphan*/  GSS_C_NO_CREDENTIAL ; 
 int /*<<< orphan*/  GSS_C_NO_NAME ; 
 int /*<<< orphan*/  GSS_C_NO_OID_SET ; 
 int /*<<< orphan*/  GSS_C_NT_HOSTBASED_SERVICE ; 
 int GSS_C_SEQUENCE_FLAG ; 
 scalar_t__ FUNC0 (int) ; 
 int GSS_S_CONTINUE_NEEDED ; 
 scalar_t__ FUNC1 (char**,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 () ; 
 scalar_t__ fork_flag ; 
 scalar_t__ FUNC9 (int,struct sockaddr*,int*) ; 
 scalar_t__ FUNC10 (int,struct sockaddr*,int*) ; 
 int FUNC11 (int*,int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int*,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int,int,char*,...) ; 
 int FUNC14 (int*,scalar_t__*,TYPE_5__*) ; 
 int FUNC15 (int*,TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC16 (int*,TYPE_5__*,scalar_t__*) ; 
 int FUNC17 (int*,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_5__*,int /*<<< orphan*/ *,TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int*,TYPE_5__*) ; 
 int /*<<< orphan*/  mech ; 
 char* password ; 
 scalar_t__ FUNC19 (int*) ; 
 int /*<<< orphan*/  FUNC20 (int,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (char*) ; 
 int /*<<< orphan*/  FUNC23 (int,TYPE_5__*) ; 

__attribute__((used)) static int
FUNC24 (int sock, const char *hostname, const char *service)
{
    struct sockaddr_storage remote, local;
    socklen_t addrlen;

    int context_established = 0;
    gss_ctx_id_t context_hdl = GSS_C_NO_CONTEXT;
    gss_cred_id_t cred = GSS_C_NO_CREDENTIAL;
    gss_buffer_desc real_input_token, real_output_token;
    gss_buffer_t input_token = &real_input_token,
	output_token = &real_output_token;
    OM_uint32 maj_stat, min_stat;
    gss_name_t server;
    gss_buffer_desc name_token;
    u_char init_buf[4];
    u_char acct_buf[4];
    gss_OID mech_oid;
    char *str;

    mech_oid = FUNC21(mech);

    name_token.length = FUNC1 (&str,
				  "%s@%s", service, hostname);
    if (str == NULL)
	FUNC6(1, "malloc - out of memory");
    name_token.value = str;

    maj_stat = FUNC15 (&min_stat,
				&name_token,
				GSS_C_NT_HOSTBASED_SERVICE,
				&server);
    if (FUNC0(maj_stat))
	FUNC13 (1, min_stat,
		 "Error importing name `%s@%s':\n", service, hostname);

    if (password) {
        gss_buffer_desc pw;

        pw.value = password;
        pw.length = FUNC22(password);

        maj_stat = FUNC11(&min_stat,
						  GSS_C_NO_NAME,
						  &pw,
						  GSS_C_INDEFINITE,
						  GSS_C_NO_OID_SET,
						  GSS_C_INITIATE,
						  &cred,
						  NULL,
						  NULL);
        if (FUNC0(maj_stat))
            FUNC13 (1, min_stat,
                     "Error acquiring default initiator credentials");
    }

    addrlen = sizeof(local);
    if (FUNC10 (sock, (struct sockaddr *)&local, &addrlen) < 0
	|| addrlen > sizeof(local))
	FUNC5 (1, "getsockname(%s)", hostname);

    addrlen = sizeof(remote);
    if (FUNC9 (sock, (struct sockaddr *)&remote, &addrlen) < 0
	|| addrlen > sizeof(remote))
	FUNC5 (1, "getpeername(%s)", hostname);

    input_token->length = 0;
    output_token->length = 0;

#if 0
    struct gss_channel_bindings_struct input_chan_bindings;

    input_chan_bindings.initiator_addrtype = GSS_C_AF_INET;
    input_chan_bindings.initiator_address.length = 4;
    init_buf[0] = (local.sin_addr.s_addr >> 24) & 0xFF;
    init_buf[1] = (local.sin_addr.s_addr >> 16) & 0xFF;
    init_buf[2] = (local.sin_addr.s_addr >>  8) & 0xFF;
    init_buf[3] = (local.sin_addr.s_addr >>  0) & 0xFF;
    input_chan_bindings.initiator_address.value = init_buf;

    input_chan_bindings.acceptor_addrtype = GSS_C_AF_INET;
    input_chan_bindings.acceptor_address.length = 4;
    acct_buf[0] = (remote.sin_addr.s_addr >> 24) & 0xFF;
    acct_buf[1] = (remote.sin_addr.s_addr >> 16) & 0xFF;
    acct_buf[2] = (remote.sin_addr.s_addr >>  8) & 0xFF;
    acct_buf[3] = (remote.sin_addr.s_addr >>  0) & 0xFF;
    input_chan_bindings.acceptor_address.value = acct_buf;

    input_chan_bindings.application_data.value = emalloc(4);
    * (unsigned short*)input_chan_bindings.application_data.value = local.sin_port;
    * ((unsigned short *)input_chan_bindings.application_data.value + 1) = remote.sin_port;
    input_chan_bindings.application_data.length = 4;

    input_chan_bindings.application_data.length = 0;
    input_chan_bindings.application_data.value = NULL;
#endif

    while(!context_established) {
	maj_stat =
	    FUNC17(&min_stat,
				 cred,
				 &context_hdl,
				 server,
				 mech_oid,
				 GSS_C_MUTUAL_FLAG | GSS_C_SEQUENCE_FLAG,
				 0,
				 NULL,
				 input_token,
				 NULL,
				 output_token,
				 NULL,
				 NULL);
	if (FUNC0(maj_stat))
	    FUNC13 (1, min_stat, "gss_init_sec_context");
	if (output_token->length != 0)
	    FUNC23 (sock, output_token);
	if (FUNC0(maj_stat)) {
	    if (context_hdl != GSS_C_NO_CONTEXT)
		FUNC12 (&min_stat,
					&context_hdl,
					GSS_C_NO_BUFFER);
	    break;
	}
	if (maj_stat & GSS_S_CONTINUE_NEEDED) {
	    FUNC20 (sock, input_token);
	} else {
	    context_established = 1;
	}

    }
    if (fork_flag) {
	pid_t pid;
	int pipefd[2];

	if (FUNC19 (pipefd) < 0)
	    FUNC5 (1, "pipe");

	pid = FUNC8 ();
	if (pid < 0)
	    FUNC5 (1, "fork");
	if (pid != 0) {
	    gss_buffer_desc buf;

	    maj_stat = FUNC14 (&min_stat,
					       &context_hdl,
					       &buf);
	    if (FUNC0(maj_stat))
		FUNC13 (1, min_stat, "gss_export_sec_context");
	    FUNC23 (pipefd[1], &buf);
	    FUNC7 (0);
	} else {
	    gss_ctx_id_t context_hdl;
	    gss_buffer_desc buf;

	    FUNC2 (pipefd[1]);
	    FUNC20 (pipefd[0], &buf);
	    FUNC2 (pipefd[0]);
	    maj_stat = FUNC16 (&min_stat, &buf, &context_hdl);
	    if (FUNC0(maj_stat))
		FUNC13 (1, min_stat, "gss_import_sec_context");
	    FUNC18 (&min_stat, &buf);
	    return FUNC3 (sock, context_hdl);
	}
    } else {
	return FUNC3 (sock, context_hdl);
    }
}