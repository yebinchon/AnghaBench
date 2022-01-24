#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  remote ;
typedef  int /*<<< orphan*/  local ;
typedef  int /*<<< orphan*/  gss_name_t ;
typedef  scalar_t__ gss_ctx_id_t ;
typedef  TYPE_1__* gss_buffer_t ;
struct TYPE_12__ {scalar_t__ length; char* value; } ;
typedef  TYPE_1__ gss_buffer_desc ;
typedef  int OM_uint32 ;

/* Variables and functions */
 int GSS_C_MUTUAL_FLAG ; 
 int /*<<< orphan*/  GSS_C_NO_BUFFER ; 
 int /*<<< orphan*/  GSS_C_NO_CHANNEL_BINDINGS ; 
 scalar_t__ GSS_C_NO_CONTEXT ; 
 int /*<<< orphan*/  GSS_C_NO_CREDENTIAL ; 
 int /*<<< orphan*/  GSS_C_NO_OID ; 
 int /*<<< orphan*/  GSS_C_NT_HOSTBASED_SERVICE ; 
 int /*<<< orphan*/  GSS_C_QOP_DEFAULT ; 
 int GSS_C_SEQUENCE_FLAG ; 
 scalar_t__ FUNC0 (int) ; 
 int GSS_S_CONTINUE_NEEDED ; 
 scalar_t__ FUNC1 (char**,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 scalar_t__ FUNC4 (int,struct sockaddr*,int*) ; 
 scalar_t__ FUNC5 (int,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int*,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int,char*,...) ; 
 int FUNC8 (int*,scalar_t__,int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*) ; 
 int FUNC9 (int*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC10 (int*,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC11 (int*,scalar_t__,int,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int,TYPE_1__*) ; 
 char* FUNC14 (char*) ; 

__attribute__((used)) static int
FUNC15 (int sock, const char *hostname, const char *service)
{
    struct sockaddr_in remote, local;
    socklen_t addrlen;

    int context_established = 0;
    gss_ctx_id_t context_hdl = GSS_C_NO_CONTEXT;
    gss_buffer_t input_token, output_token;
    gss_buffer_desc real_input_token, real_output_token;
    OM_uint32 maj_stat, min_stat;
    gss_name_t server;
    gss_buffer_desc name_token;
    char *str;

    name_token.length = FUNC1 (&str,
				  "%s@%s", service, hostname);
    if (str == NULL)
	FUNC3(1, "out of memory");
    name_token.value = str;

    maj_stat = FUNC9 (&min_stat,
				&name_token,
				GSS_C_NT_HOSTBASED_SERVICE,
				&server);
    if (FUNC0(maj_stat))
	FUNC7 (1, min_stat,
		 "Error importing name `%s@%s':\n", service, hostname);

    addrlen = sizeof(local);
    if (FUNC5 (sock, (struct sockaddr *)&local, &addrlen) < 0
	|| addrlen != sizeof(local))
	FUNC2 (1, "getsockname(%s)", hostname);

    addrlen = sizeof(remote);
    if (FUNC4 (sock, (struct sockaddr *)&remote, &addrlen) < 0
	|| addrlen != sizeof(remote))
	FUNC2 (1, "getpeername(%s)", hostname);

    input_token = &real_input_token;
    output_token = &real_output_token;

    input_token->length = 0;
    output_token->length = 0;

    while(!context_established) {
	maj_stat =
	    FUNC10(&min_stat,
				 GSS_C_NO_CREDENTIAL,
				 &context_hdl,
				 server,
				 GSS_C_NO_OID,
				 GSS_C_MUTUAL_FLAG | GSS_C_SEQUENCE_FLAG,
				 0,
				 GSS_C_NO_CHANNEL_BINDINGS,
				 input_token,
				 NULL,
				 output_token,
				 NULL,
				 NULL);
	if (FUNC0(maj_stat))
	    FUNC7 (1, min_stat, "gss_init_sec_context");
	if (output_token->length != 0)
	    FUNC13 (sock, output_token);
	if (FUNC0(maj_stat)) {
	    if (context_hdl != GSS_C_NO_CONTEXT)
		FUNC6 (&min_stat,
					&context_hdl,
					GSS_C_NO_BUFFER);
	    break;
	}
	if (maj_stat & GSS_S_CONTINUE_NEEDED) {
	    FUNC12 (sock, input_token);
	} else {
	    context_established = 1;
	}

    }

    /* get_mic */

    input_token->length = 3;
    input_token->value  = FUNC14("hej");

    maj_stat = FUNC8(&min_stat,
			   context_hdl,
			   GSS_C_QOP_DEFAULT,
			   input_token,
			   output_token);
    if (FUNC0(maj_stat))
	FUNC7 (1, min_stat, "gss_get_mic");

    FUNC13 (sock, input_token);
    FUNC13 (sock, output_token);

    /* wrap */

    input_token->length = 7;
    input_token->value  = "hemligt";


    maj_stat = FUNC11 (&min_stat,
			 context_hdl,
			 1,
			 GSS_C_QOP_DEFAULT,
			 input_token,
			 NULL,
			 output_token);
    if (FUNC0(maj_stat))
	FUNC7 (1, min_stat, "gss_wrap");

    FUNC13 (sock, output_token);

    return 0;
}