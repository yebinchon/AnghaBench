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
struct dpp_authentication {int auth_success; int /*<<< orphan*/  k2; int /*<<< orphan*/  k1; scalar_t__ Lx_len; int /*<<< orphan*/  Lx; scalar_t__ Nx_len; int /*<<< orphan*/  Nx; scalar_t__ Mx_len; int /*<<< orphan*/  Mx; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC2(struct dpp_authentication *auth)
{
	FUNC1(MSG_DEBUG,
		   "DPP: Authentication success - clear temporary keys");
	FUNC0(auth->Mx, 0, sizeof(auth->Mx));
	auth->Mx_len = 0;
	FUNC0(auth->Nx, 0, sizeof(auth->Nx));
	auth->Nx_len = 0;
	FUNC0(auth->Lx, 0, sizeof(auth->Lx));
	auth->Lx_len = 0;
	FUNC0(auth->k1, 0, sizeof(auth->k1));
	FUNC0(auth->k2, 0, sizeof(auth->k2));

	auth->auth_success = 1;
}