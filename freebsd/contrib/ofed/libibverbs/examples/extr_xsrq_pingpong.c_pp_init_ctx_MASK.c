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
struct TYPE_3__ {int max_sge; int /*<<< orphan*/  max_wr; } ;
struct ibv_xrcd_init_attr {int comp_mask; int fd; int oflags; scalar_t__ pd; void* cq; scalar_t__ xrcd; int /*<<< orphan*/  srq_type; TYPE_1__ attr; } ;
struct ibv_srq_init_attr_ex {int comp_mask; int fd; int oflags; scalar_t__ pd; void* cq; scalar_t__ xrcd; int /*<<< orphan*/  srq_type; TYPE_1__ attr; } ;
struct ibv_port_attr {scalar_t__ link_layer; int /*<<< orphan*/  lid; } ;
struct TYPE_4__ {int size; int fd; int /*<<< orphan*/  srq; int /*<<< orphan*/  context; scalar_t__ pd; void* recv_cq; scalar_t__ xrcd; int /*<<< orphan*/  num_clients; void* send_cq; scalar_t__ use_event; int /*<<< orphan*/ * channel; int /*<<< orphan*/  mr; struct ibv_xrcd_init_attr* buf; int /*<<< orphan*/  lid; int /*<<< orphan*/  ib_port; void* rem_dest; void* send_qp; void* recv_qp; } ;

/* Variables and functions */
 int /*<<< orphan*/  IBV_ACCESS_LOCAL_WRITE ; 
 scalar_t__ IBV_LINK_LAYER_ETHERNET ; 
 int /*<<< orphan*/  IBV_SRQT_XRC ; 
 int IBV_SRQ_INIT_ATTR_CQ ; 
 int IBV_SRQ_INIT_ATTR_PD ; 
 int IBV_SRQ_INIT_ATTR_TYPE ; 
 int IBV_SRQ_INIT_ATTR_XRCD ; 
 int IBV_XRCD_INIT_ATTR_FD ; 
 int IBV_XRCD_INIT_ATTR_OFLAGS ; 
 int O_CREAT ; 
 int O_RDONLY ; 
 int S_IRGRP ; 
 int S_IRUSR ; 
 void* FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 () ; 
 TYPE_2__ ctx ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct ibv_xrcd_init_attr*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,struct ibv_xrcd_init_attr*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,struct ibv_xrcd_init_attr*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (void*,int /*<<< orphan*/ ) ; 
 struct ibv_xrcd_init_attr* FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct ibv_xrcd_init_attr*,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (char*,int,int) ; 
 scalar_t__ FUNC13 (char*) ; 
 int /*<<< orphan*/  page_size ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ibv_port_attr*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC15(char *ib_devname)
{
	struct ibv_srq_init_attr_ex attr;
	struct ibv_xrcd_init_attr xrcd_attr;
	struct ibv_port_attr port_attr;

	ctx.recv_qp = FUNC0(ctx.num_clients, sizeof *ctx.recv_qp);
	ctx.send_qp = FUNC0(ctx.num_clients, sizeof *ctx.send_qp);
	ctx.rem_dest = FUNC0(ctx.num_clients, sizeof *ctx.rem_dest);
	if (!ctx.recv_qp || !ctx.send_qp || !ctx.rem_dest)
		return 1;

	if (FUNC13(ib_devname)) {
		FUNC2(stderr, "Failed to open device\n");
		return 1;
	}

	if (FUNC14(ctx.context, ctx.ib_port, &port_attr)) {
		FUNC2(stderr, "Failed to get port info\n");
		return 1;
	}

	ctx.lid = port_attr.lid;
	if (port_attr.link_layer != IBV_LINK_LAYER_ETHERNET && !ctx.lid) {
		FUNC2(stderr, "Couldn't get local LID\n");
		return 1;
	}

	ctx.buf = FUNC10(page_size, ctx.size);
	if (!ctx.buf) {
		FUNC2(stderr, "Couldn't allocate work buf.\n");
		return 1;
	}

	FUNC11(ctx.buf, 0, ctx.size);

	if (ctx.use_event) {
		ctx.channel = FUNC4(ctx.context);
		if (!ctx.channel) {
			FUNC2(stderr, "Couldn't create completion channel\n");
			return 1;
		}
	}

	ctx.pd = FUNC3(ctx.context);
	if (!ctx.pd) {
		FUNC2(stderr, "Couldn't allocate PD\n");
		return 1;
	}

	ctx.mr = FUNC8(ctx.pd, ctx.buf, ctx.size, IBV_ACCESS_LOCAL_WRITE);
	if (!ctx.mr) {
		FUNC2(stderr, "Couldn't register MR\n");
		return 1;
	}

	ctx.fd = FUNC12("/tmp/xrc_domain", O_RDONLY | O_CREAT, S_IRUSR | S_IRGRP);
	if (ctx.fd < 0) {
		FUNC2(stderr,
			"Couldn't create the file for the XRC Domain "
			"but not stopping %d\n", errno);
		ctx.fd = -1;
	}

	FUNC11(&xrcd_attr, 0, sizeof xrcd_attr);
	xrcd_attr.comp_mask = IBV_XRCD_INIT_ATTR_FD | IBV_XRCD_INIT_ATTR_OFLAGS;
	xrcd_attr.fd = ctx.fd;
	xrcd_attr.oflags = O_CREAT;
	ctx.xrcd = FUNC7(ctx.context, &xrcd_attr);
	if (!ctx.xrcd) {
		FUNC2(stderr, "Couldn't Open the XRC Domain %d\n", errno);
		return 1;
	}

	ctx.recv_cq = FUNC5(ctx.context, ctx.num_clients, &ctx.recv_cq,
				    ctx.channel, 0);
	if (!ctx.recv_cq) {
		FUNC2(stderr, "Couldn't create recv CQ\n");
		return 1;
	}

	if (ctx.use_event) {
		if (FUNC9(ctx.recv_cq, 0)) {
			FUNC2(stderr, "Couldn't request CQ notification\n");
			return 1;
		}
	}

	ctx.send_cq = FUNC5(ctx.context, ctx.num_clients, NULL, NULL, 0);
	if (!ctx.send_cq) {
		FUNC2(stderr, "Couldn't create send CQ\n");
		return 1;
	}

	FUNC11(&attr, 0, sizeof attr);
	attr.attr.max_wr = ctx.num_clients;
	attr.attr.max_sge = 1;
	attr.comp_mask = IBV_SRQ_INIT_ATTR_TYPE | IBV_SRQ_INIT_ATTR_XRCD |
			 IBV_SRQ_INIT_ATTR_CQ | IBV_SRQ_INIT_ATTR_PD;
	attr.srq_type = IBV_SRQT_XRC;
	attr.xrcd = ctx.xrcd;
	attr.cq = ctx.recv_cq;
	attr.pd = ctx.pd;

	ctx.srq = FUNC6(ctx.context, &attr);
	if (!ctx.srq)  {
		FUNC2(stderr, "Couldn't create SRQ\n");
		return 1;
	}

	if (FUNC1())
		return 1;

	return 0;
}