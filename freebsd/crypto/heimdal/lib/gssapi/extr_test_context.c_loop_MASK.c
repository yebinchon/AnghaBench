#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  gss_name_t ;
typedef  int /*<<< orphan*/  gss_ctx_id_t ;
typedef  scalar_t__ gss_cred_id_t ;
struct TYPE_8__ {scalar_t__ length; int /*<<< orphan*/ * value; } ;
typedef  TYPE_1__ gss_buffer_desc ;
typedef  int /*<<< orphan*/  gss_OID ;
typedef  int OM_uint32 ;

/* Variables and functions */
 int GSS_C_CONF_FLAG ; 
 int GSS_C_DCE_STYLE ; 
 int GSS_C_DELEG_FLAG ; 
 int GSS_C_DELEG_POLICY_FLAG ; 
 int GSS_C_INTEG_FLAG ; 
 int GSS_C_MUTUAL_FLAG ; 
 int /*<<< orphan*/  GSS_C_NO_CHANNEL_BINDINGS ; 
 scalar_t__ GSS_C_NO_CREDENTIAL ; 
 int /*<<< orphan*/  GSS_C_NO_OID ; 
 scalar_t__ FUNC0 (int) ; 
 int GSS_S_CONTINUE_NEEDED ; 
 int client_time_offset ; 
 scalar_t__ dce_style_flag ; 
 scalar_t__ deleg_flag ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int FUNC3 (int*,int /*<<< orphan*/ *,scalar_t__,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int*,int /*<<< orphan*/ *,scalar_t__*) ; 
 int FUNC4 (int*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,TYPE_1__*,int*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int max_loops ; 
 scalar_t__ mutual_auth_flag ; 
 scalar_t__ policy_deleg_flag ; 
 int /*<<< orphan*/  FUNC12 (char*,int) ; 
 int /*<<< orphan*/ * FUNC13 (char const*) ; 
 scalar_t__ server_no_deleg_flag ; 
 int server_time_offset ; 
 scalar_t__ FUNC14 (char const*) ; 
 scalar_t__ verbose_flag ; 

__attribute__((used)) static void
FUNC15(gss_OID mechoid,
     gss_OID nameoid, const char *target,
     gss_cred_id_t init_cred,
     gss_ctx_id_t *sctx, gss_ctx_id_t *cctx,
     gss_OID *actual_mech,
     gss_cred_id_t *deleg_cred)
{
    int server_done = 0, client_done = 0;
    int num_loops = 0;
    OM_uint32 maj_stat, min_stat;
    gss_name_t gss_target_name;
    gss_buffer_desc input_token, output_token;
    OM_uint32 flags = 0, ret_cflags, ret_sflags;
    gss_OID actual_mech_client;
    gss_OID actual_mech_server;

    *actual_mech = GSS_C_NO_OID;

    flags |= GSS_C_INTEG_FLAG;
    flags |= GSS_C_CONF_FLAG;

    if (mutual_auth_flag)
	flags |= GSS_C_MUTUAL_FLAG;
    if (dce_style_flag)
	flags |= GSS_C_DCE_STYLE;
    if (deleg_flag)
	flags |= GSS_C_DELEG_FLAG;
    if (policy_deleg_flag)
	flags |= GSS_C_DELEG_POLICY_FLAG;

    input_token.value = FUNC13(target);
    input_token.length = FUNC14(target);

    maj_stat = FUNC4(&min_stat,
			       &input_token,
			       nameoid,
			       &gss_target_name);
    if (FUNC0(maj_stat))
	FUNC1(1, "import name creds failed with: %d", maj_stat);

    input_token.length = 0;
    input_token.value = NULL;

    while (!server_done || !client_done) {
	num_loops++;

	FUNC11(client_time_offset);

	maj_stat = FUNC5(&min_stat,
					init_cred,
					cctx,
					gss_target_name,
					mechoid,
					flags,
					0,
					NULL,
					&input_token,
					&actual_mech_client,
					&output_token,
					&ret_cflags,
					NULL);
	if (FUNC0(maj_stat))
	    FUNC2(1, "init_sec_context: %s",
		 FUNC9(maj_stat, min_stat, mechoid));
	if (maj_stat & GSS_S_CONTINUE_NEEDED)
	    ;
	else
	    client_done = 1;

	FUNC10(&client_time_offset);

	if (client_done && server_done)
	    break;

	if (input_token.length != 0)
	    FUNC7(&min_stat, &input_token);

	FUNC11(server_time_offset);

	maj_stat = FUNC3(&min_stat,
					  sctx,
					  GSS_C_NO_CREDENTIAL,
					  &output_token,
					  GSS_C_NO_CHANNEL_BINDINGS,
					  NULL,
					  &actual_mech_server,
					  &input_token,
					  &ret_sflags,
					  NULL,
					  deleg_cred);
	if (FUNC0(maj_stat))
		FUNC2(1, "accept_sec_context: %s",
		     FUNC9(maj_stat, min_stat, actual_mech_server));

	FUNC10(&server_time_offset);

	if (output_token.length != 0)
	    FUNC7(&min_stat, &output_token);

	if (maj_stat & GSS_S_CONTINUE_NEEDED)
	    ;
	else
	    server_done = 1;
    }
    if (output_token.length != 0)
	FUNC7(&min_stat, &output_token);
    if (input_token.length != 0)
	FUNC7(&min_stat, &input_token);
    FUNC8(&min_stat, &gss_target_name);

    if (deleg_flag || policy_deleg_flag) {
	if (server_no_deleg_flag) {
	    if (*deleg_cred != GSS_C_NO_CREDENTIAL)
		FUNC2(1, "got delegated cred but didn't expect one");
	} else if (*deleg_cred == GSS_C_NO_CREDENTIAL)
	    FUNC2(1, "asked for delegarated cred but did get one");
    } else if (*deleg_cred != GSS_C_NO_CREDENTIAL)
	  FUNC2(1, "got deleg_cred cred but didn't ask");

    if (FUNC6(actual_mech_server, actual_mech_client) == 0)
	FUNC2(1, "mech mismatch");
    *actual_mech = actual_mech_server;

    if (max_loops && num_loops > max_loops)
	FUNC2(1, "num loops %d was lager then max loops %d",
	     num_loops, max_loops);

    if (verbose_flag) {
	FUNC12("server time offset: %d\n", server_time_offset);
	FUNC12("client time offset: %d\n", client_time_offset);
	FUNC12("num loops %d\n", num_loops);
    }
}