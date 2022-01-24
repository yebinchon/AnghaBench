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
typedef  int /*<<< orphan*/  gss_ctx_id_t ;
typedef  TYPE_1__* gss_buffer_t ;
struct TYPE_8__ {int length; char* value; } ;
typedef  TYPE_1__ gss_buffer_desc ;
typedef  int /*<<< orphan*/  OM_uint32 ;

/* Variables and functions */
 int /*<<< orphan*/  GSS_C_QOP_DEFAULT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 char* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC6 (int sock, gss_ctx_id_t context_hdl)
{
    OM_uint32 maj_stat, min_stat;
    gss_buffer_desc real_input_token, real_output_token;
    gss_buffer_t input_token = &real_input_token,
	output_token = &real_output_token;

    /* get_mic */

    input_token->length = 3;
    input_token->value  = FUNC4("hej");

    maj_stat = FUNC2(&min_stat,
			   context_hdl,
			   GSS_C_QOP_DEFAULT,
			   input_token,
			   output_token);
    if (FUNC0(maj_stat))
	FUNC1 (1, min_stat, "gss_get_mic");

    FUNC5 (sock, input_token);
    FUNC5 (sock, output_token);

    /* wrap */

    input_token->length = 7;
    input_token->value  = "hemligt";

    maj_stat = FUNC3 (&min_stat,
			 context_hdl,
			 0,
			 GSS_C_QOP_DEFAULT,
			 input_token,
			 NULL,
			 output_token);
    if (FUNC0(maj_stat))
	FUNC1 (1, min_stat, "gss_wrap");

    FUNC5 (sock, output_token);

    maj_stat = FUNC3 (&min_stat,
			 context_hdl,
			 1,
			 GSS_C_QOP_DEFAULT,
			 input_token,
			 NULL,
			 output_token);
    if (FUNC0(maj_stat))
	FUNC1 (1, min_stat, "gss_wrap");

    FUNC5 (sock, output_token);

    return 0;
}