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
typedef  int /*<<< orphan*/  gss_qop_t ;
typedef  int /*<<< orphan*/  gss_ctx_id_t ;
struct TYPE_7__ {char* value; int length; } ;
typedef  TYPE_1__ gss_buffer_desc ;
typedef  int /*<<< orphan*/  gss_OID ;
typedef  scalar_t__ OM_uint32 ;

/* Variables and functions */
 scalar_t__ GSS_S_COMPLETE ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,TYPE_1__*) ; 
 scalar_t__ FUNC3 (scalar_t__*,int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(gss_ctx_id_t cctx, gss_ctx_id_t sctx, gss_OID mechoid)
{
    gss_buffer_desc input_token, output_token;
    OM_uint32 min_stat, maj_stat;
    gss_qop_t qop_state;

    input_token.value = "bar";
    input_token.length = 3;

    maj_stat = FUNC1(&min_stat, cctx, 0, &input_token,
			   &output_token);
    if (maj_stat != GSS_S_COMPLETE)
	FUNC0(1, "gss_get_mic failed: %s",
	     FUNC4(maj_stat, min_stat, mechoid));

    maj_stat = FUNC3(&min_stat, sctx, &input_token,
			      &output_token, &qop_state);
    if (maj_stat != GSS_S_COMPLETE)
	FUNC0(1, "gss_verify_mic failed: %s",
	     FUNC4(maj_stat, min_stat, mechoid));

    FUNC2(&min_stat, &output_token);
}