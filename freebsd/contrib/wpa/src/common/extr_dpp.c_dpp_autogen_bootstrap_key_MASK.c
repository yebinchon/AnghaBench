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
struct dpp_bootstrap_info {int /*<<< orphan*/  uri; int /*<<< orphan*/  type; } ;
struct dpp_authentication {struct dpp_bootstrap_info* own_bi; struct dpp_bootstrap_info* tmp_own_bi; TYPE_2__* peer_bi; } ;
struct TYPE_4__ {TYPE_1__* curve; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPP_BOOTSTRAP_QR_CODE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (struct dpp_bootstrap_info*) ; 
 char* FUNC1 (struct dpp_bootstrap_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,size_t,char*,char*) ; 
 scalar_t__ FUNC5 (char*) ; 
 struct dpp_bootstrap_info* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct dpp_authentication *auth)
{
	struct dpp_bootstrap_info *bi;
	char *pk = NULL;
	size_t len;

	if (auth->own_bi)
		return 0; /* already generated */

	bi = FUNC6(sizeof(*bi));
	if (!bi)
		return -1;
	bi->type = DPP_BOOTSTRAP_QR_CODE;
	pk = FUNC1(bi, auth->peer_bi->curve->name, NULL, 0);
	if (!pk)
		goto fail;

	len = 4; /* "DPP:" */
	len += 4 + FUNC5(pk);
	bi->uri = FUNC3(len + 1);
	if (!bi->uri)
		goto fail;
	FUNC4(bi->uri, len + 1, "DPP:K:%s;;", pk);
	FUNC7(MSG_DEBUG,
		   "DPP: Auto-generated own bootstrapping key info: URI %s",
		   bi->uri);

	auth->tmp_own_bi = auth->own_bi = bi;

	FUNC2(pk);

	return 0;
fail:
	FUNC2(pk);
	FUNC0(bi);
	return -1;
}