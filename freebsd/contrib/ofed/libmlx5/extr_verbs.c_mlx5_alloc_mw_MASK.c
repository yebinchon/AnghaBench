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
struct ibv_pd {int dummy; } ;
struct ibv_mw {int dummy; } ;
struct ibv_alloc_mw_resp {int dummy; } ;
struct ibv_alloc_mw {int dummy; } ;
typedef  int /*<<< orphan*/  resp ;
typedef  enum ibv_mw_type { ____Placeholder_ibv_mw_type } ibv_mw_type ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ibv_mw*) ; 
 int FUNC1 (struct ibv_pd*,int,struct ibv_mw*,struct ibv_alloc_mw*,int,struct ibv_alloc_mw_resp*,int) ; 
 struct ibv_mw* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct ibv_mw*,int /*<<< orphan*/ ,int) ; 

struct ibv_mw *FUNC4(struct ibv_pd *pd, enum ibv_mw_type type)
{
	struct ibv_mw *mw;
	struct ibv_alloc_mw cmd;
	struct ibv_alloc_mw_resp resp;
	int ret;

	mw = FUNC2(sizeof(*mw));
	if (!mw)
		return NULL;

	FUNC3(mw, 0, sizeof(*mw));

	ret = FUNC1(pd, type, mw, &cmd, sizeof(cmd), &resp,
			       sizeof(resp));
	if (ret) {
		FUNC0(mw);
		return NULL;
	}

	return mw;
}