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
struct rsocket {int dummy; } ;
struct rs_svc_msg {int cmd; int /*<<< orphan*/  status; struct rsocket* rs; } ;
struct rs_svc {int /*<<< orphan*/ * sock; int /*<<< orphan*/  id; scalar_t__ cnt; int /*<<< orphan*/  run; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 int /*<<< orphan*/  EINVAL ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mut ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct rs_svc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct rs_svc_msg*,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct rs_svc_msg*,int) ; 

__attribute__((used)) static int FUNC10(struct rs_svc *svc, struct rsocket *rs, int cmd)
{
	struct rs_svc_msg msg;
	int ret;

	FUNC4(&mut);
	if (!svc->cnt) {
		ret = FUNC8(AF_UNIX, SOCK_STREAM, 0, svc->sock);
		if (ret)
			goto unlock;

		ret = FUNC2(&svc->id, NULL, svc->run, svc);
		if (ret) {
			ret = FUNC0(ret);
			goto closepair;
		}
	}

	msg.cmd = cmd;
	msg.status = EINVAL;
	msg.rs = rs;
	FUNC9(svc->sock[0], &msg, sizeof msg);
	FUNC7(svc->sock[0], &msg, sizeof msg);
	ret = FUNC6(msg.status);
	if (svc->cnt)
		goto unlock;

	FUNC3(svc->id, NULL);
closepair:
	FUNC1(svc->sock[0]);
	FUNC1(svc->sock[1]);
unlock:
	FUNC5(&mut);
	return ret;
}