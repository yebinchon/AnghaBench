#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ ioc_local; scalar_t__ ioc_server; } ;
struct smb_ctx {scalar_t__ ct_nb; scalar_t__ ct_srvaddr; TYPE_1__ ct_ssn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

void
FUNC3(struct smb_ctx *ctx)
{
	if (ctx->ct_ssn.ioc_server)
		FUNC2(ctx->ct_ssn.ioc_server);
	if (ctx->ct_ssn.ioc_local)
		FUNC2(ctx->ct_ssn.ioc_local);
	if (ctx->ct_srvaddr)
		FUNC0(ctx->ct_srvaddr);
	if (ctx->ct_nb)
		FUNC1(ctx->ct_nb);
}