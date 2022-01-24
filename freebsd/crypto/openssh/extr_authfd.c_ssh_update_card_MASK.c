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
typedef  int /*<<< orphan*/  u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct sshbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SSH_AGENTC_ADD_SMARTCARD_KEY ; 
 int /*<<< orphan*/  SSH_AGENTC_ADD_SMARTCARD_KEY_CONSTRAINED ; 
 int /*<<< orphan*/  SSH_AGENTC_REMOVE_SMARTCARD_KEY ; 
 int SSH_ERR_ALLOC_FAIL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct sshbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,struct sshbuf*,struct sshbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct sshbuf*) ; 
 int FUNC4 (struct sshbuf*,int /*<<< orphan*/ *) ; 
 struct sshbuf* FUNC5 () ; 
 int FUNC6 (struct sshbuf*,char const*) ; 
 int FUNC7 (struct sshbuf*,int /*<<< orphan*/ ) ; 

int
FUNC8(int sock, int add, const char *reader_id, const char *pin,
    u_int life, u_int confirm)
{
	struct sshbuf *msg;
	int r, constrained = (life || confirm);
	u_char type;

	if (add) {
		type = constrained ?
		    SSH_AGENTC_ADD_SMARTCARD_KEY_CONSTRAINED :
		    SSH_AGENTC_ADD_SMARTCARD_KEY;
	} else
		type = SSH_AGENTC_REMOVE_SMARTCARD_KEY;

	if ((msg = FUNC5()) == NULL)
		return SSH_ERR_ALLOC_FAIL;
	if ((r = FUNC7(msg, type)) != 0 ||
	    (r = FUNC6(msg, reader_id)) != 0 ||
	    (r = FUNC6(msg, pin)) != 0)
		goto out;
	if (constrained &&
	    (r = FUNC1(msg, life, confirm, 0)) != 0)
		goto out;
	if ((r = FUNC2(sock, msg, msg)) != 0)
		goto out;
	if ((r = FUNC4(msg, &type)) != 0)
		goto out;
	r = FUNC0(type);
 out:
	FUNC3(msg);
	return r;
}