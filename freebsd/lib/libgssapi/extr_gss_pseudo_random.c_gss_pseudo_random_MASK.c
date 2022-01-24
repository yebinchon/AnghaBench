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
struct _gss_mech_switch {scalar_t__ (* gm_pseudo_random ) (scalar_t__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/  const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct _gss_context {int /*<<< orphan*/  gc_ctx; struct _gss_mech_switch* gc_mech; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  scalar_t__ gss_ctx_id_t ;
typedef  int /*<<< orphan*/  gss_buffer_t ;
typedef  scalar_t__ OM_uint32 ;

/* Variables and functions */
 scalar_t__ GSS_S_COMPLETE ; 
 scalar_t__ GSS_S_NO_CONTEXT ; 
 scalar_t__ GSS_S_UNAVAILABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct _gss_mech_switch*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/  const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

OM_uint32
FUNC3(OM_uint32 *minor_status,
		  gss_ctx_id_t context,
		  int prf_key,
		  const gss_buffer_t prf_in,
		  ssize_t desired_output_len,
		  gss_buffer_t prf_out)
{
    struct _gss_context *ctx = (struct _gss_context *) context;
    struct _gss_mech_switch *m;
    OM_uint32 major_status;

    FUNC0(prf_out);
    *minor_status = 0;

    if (ctx == NULL) {
	*minor_status = 0;
	return GSS_S_NO_CONTEXT;
    }
    m = ctx->gc_mech;

    if (m->gm_pseudo_random == NULL)
	return GSS_S_UNAVAILABLE;
    
    major_status = (*m->gm_pseudo_random)(minor_status, ctx->gc_ctx,
					  prf_key, prf_in, desired_output_len,
					  prf_out);
    if (major_status != GSS_S_COMPLETE)
	    FUNC1(m, major_status, *minor_status);

    return major_status;
}