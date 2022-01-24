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
struct ibv_xrcd {int dummy; } ;
struct verbs_xrcd {struct ibv_xrcd xrcd; } ;
struct ibv_xrcd_init_attr {int dummy; } ;
struct ibv_open_xrcd_resp {int dummy; } ;
struct ibv_open_xrcd {int dummy; } ;
struct ibv_context {int dummy; } ;
typedef  int /*<<< orphan*/  resp ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 struct verbs_xrcd* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct verbs_xrcd*) ; 
 int FUNC2 (struct ibv_context*,struct verbs_xrcd*,int,struct ibv_xrcd_init_attr*,struct ibv_open_xrcd*,int,struct ibv_open_xrcd_resp*,int) ; 

struct ibv_xrcd *
FUNC3(struct ibv_context *context,
	       struct ibv_xrcd_init_attr *xrcd_init_attr)
{
	int err;
	struct verbs_xrcd *xrcd;
	struct ibv_open_xrcd cmd = {};
	struct ibv_open_xrcd_resp resp = {};

	xrcd = FUNC0(1, sizeof(*xrcd));
	if (!xrcd)
		return NULL;

	err = FUNC2(context, xrcd, sizeof(*xrcd), xrcd_init_attr,
				&cmd, sizeof(cmd), &resp, sizeof(resp));
	if (err) {
		FUNC1(xrcd);
		return NULL;
	}

	return &xrcd->xrcd;
}