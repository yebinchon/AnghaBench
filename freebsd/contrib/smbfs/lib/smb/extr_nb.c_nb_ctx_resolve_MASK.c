#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sockaddr {scalar_t__ sa_family; } ;
struct TYPE_3__ {int /*<<< orphan*/  s_addr; } ;
struct TYPE_4__ {int sin_len; scalar_t__ sin_family; int /*<<< orphan*/  sin_port; TYPE_1__ sin_addr; } ;
struct nb_ctx {scalar_t__ nb_nsname; int /*<<< orphan*/  nb_flags; TYPE_2__ nb_ns; int /*<<< orphan*/  nb_nmbtcpport; int /*<<< orphan*/  nb_smbtcpport; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int EINVAL ; 
 int /*<<< orphan*/  INADDR_BROADCAST ; 
 int /*<<< orphan*/  NBCF_RESOLVED ; 
 int /*<<< orphan*/  FUNC0 (struct sockaddr*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct sockaddr**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,scalar_t__) ; 

int
FUNC6(struct nb_ctx *ctx)
{
	struct sockaddr *sap;
	int error;

	ctx->nb_flags &= ~NBCF_RESOLVED;

	if (ctx->nb_nsname == NULL) {
		ctx->nb_ns.sin_addr.s_addr = FUNC2(INADDR_BROADCAST);
	} else {
		error = FUNC4(ctx->nb_nsname, &sap, ctx->nb_smbtcpport);
		if (error) {
			FUNC5("can't resolve %s", error, ctx->nb_nsname);
			return error;
		}
		if (sap->sa_family != AF_INET) {
			FUNC5("unsupported address family %d", 0, sap->sa_family);
			return EINVAL;
		}
		FUNC0(sap, &ctx->nb_ns, sizeof(ctx->nb_ns));
		FUNC1(sap);
	}
	ctx->nb_ns.sin_port = FUNC3(ctx->nb_nmbtcpport);
	ctx->nb_ns.sin_family = AF_INET;
	ctx->nb_ns.sin_len = sizeof(ctx->nb_ns);
	ctx->nb_flags |= NBCF_RESOLVED;
	return 0;
}