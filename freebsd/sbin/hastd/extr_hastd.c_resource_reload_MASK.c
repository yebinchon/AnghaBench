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
struct nv {int dummy; } ;
struct hast_resource {scalar_t__ hr_role; int /*<<< orphan*/  hr_ctrl; scalar_t__ hr_metaflush; int /*<<< orphan*/  hr_exec; scalar_t__ hr_timeout; scalar_t__ hr_compression; scalar_t__ hr_checksum; scalar_t__ hr_replication; int /*<<< orphan*/  hr_sourceaddr; int /*<<< orphan*/  hr_remoteaddr; } ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  CONTROL_RELOAD ; 
 scalar_t__ HAST_ROLE_PRIMARY ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct nv**) ; 
 int FUNC2 (struct hast_resource const*,int /*<<< orphan*/ ,struct nv*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nv*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct nv*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct nv*,int /*<<< orphan*/ ,char*) ; 
 struct nv* FUNC6 () ; 
 scalar_t__ FUNC7 (struct nv*) ; 
 int /*<<< orphan*/  FUNC8 (struct nv*) ; 
 int FUNC9 (struct nv*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

__attribute__((used)) static void
FUNC13(const struct hast_resource *res)
{
	struct nv *nvin, *nvout;
	int error;

	FUNC0(res->hr_role == HAST_ROLE_PRIMARY);

	nvout = FUNC6();
	FUNC5(nvout, CONTROL_RELOAD, "cmd");
	FUNC4(nvout, res->hr_remoteaddr, "remoteaddr");
	FUNC4(nvout, res->hr_sourceaddr, "sourceaddr");
	FUNC3(nvout, (int32_t)res->hr_replication, "replication");
	FUNC3(nvout, (int32_t)res->hr_checksum, "checksum");
	FUNC3(nvout, (int32_t)res->hr_compression, "compression");
	FUNC3(nvout, (int32_t)res->hr_timeout, "timeout");
	FUNC4(nvout, res->hr_exec, "exec");
	FUNC3(nvout, (int32_t)res->hr_metaflush, "metaflush");
	if (FUNC7(nvout) != 0) {
		FUNC8(nvout);
		FUNC12("Unable to allocate header for reload message.");
		return;
	}
	if (FUNC2(res, res->hr_ctrl, nvout, NULL, 0) == -1) {
		FUNC11(LOG_ERR, "Unable to send reload message");
		FUNC8(nvout);
		return;
	}
	FUNC8(nvout);

	/* Receive response. */
	if (FUNC1(res->hr_ctrl, &nvin) == -1) {
		FUNC11(LOG_ERR, "Unable to receive reload reply");
		return;
	}
	error = FUNC9(nvin, "error");
	FUNC8(nvin);
	if (error != 0) {
		FUNC10(LOG_ERR, 0, error, "Reload failed");
		return;
	}
}