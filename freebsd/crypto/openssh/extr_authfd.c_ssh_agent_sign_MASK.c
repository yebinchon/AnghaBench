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
typedef  scalar_t__ u_char ;
struct sshkey {int dummy; } ;
struct sshbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SSH2_AGENTC_SIGN_REQUEST ; 
 scalar_t__ SSH2_AGENT_SIGN_RESPONSE ; 
 int SSH_ERR_AGENT_FAILURE ; 
 int SSH_ERR_ALLOC_FAIL ; 
 int SSH_ERR_INTERNAL_ERROR ; 
 int SSH_ERR_INVALID_ARGUMENT ; 
 int SSH_ERR_INVALID_FORMAT ; 
 size_t SSH_KEY_MAX_SIGN_DATA_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct sshkey const*,char const*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,size_t) ; 
 int FUNC3 (int,struct sshbuf*,struct sshbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct sshbuf*) ; 
 int FUNC5 (struct sshbuf*,scalar_t__**,size_t*) ; 
 int FUNC6 (struct sshbuf*,scalar_t__*) ; 
 struct sshbuf* FUNC7 () ; 
 int FUNC8 (struct sshbuf*,scalar_t__ const*,size_t) ; 
 int FUNC9 (struct sshbuf*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct sshbuf*,int /*<<< orphan*/ ) ; 
 int FUNC11 (scalar_t__*,size_t,char const*) ; 
 int FUNC12 (struct sshkey const*,struct sshbuf*) ; 

int
FUNC13(int sock, const struct sshkey *key,
    u_char **sigp, size_t *lenp,
    const u_char *data, size_t datalen, const char *alg, u_int compat)
{
	struct sshbuf *msg;
	u_char *sig = NULL, type = 0;
	size_t len = 0;
	u_int flags = 0;
	int r = SSH_ERR_INTERNAL_ERROR;

	*sigp = NULL;
	*lenp = 0;

	if (datalen > SSH_KEY_MAX_SIGN_DATA_SIZE)
		return SSH_ERR_INVALID_ARGUMENT;
	if ((msg = FUNC7()) == NULL)
		return SSH_ERR_ALLOC_FAIL;
	flags |= FUNC0(key, alg);
	if ((r = FUNC10(msg, SSH2_AGENTC_SIGN_REQUEST)) != 0 ||
	    (r = FUNC12(key, msg)) != 0 ||
	    (r = FUNC8(msg, data, datalen)) != 0 ||
	    (r = FUNC9(msg, flags)) != 0)
		goto out;
	if ((r = FUNC3(sock, msg, msg)) != 0)
		goto out;
	if ((r = FUNC6(msg, &type)) != 0)
		goto out;
	if (FUNC1(type)) {
		r = SSH_ERR_AGENT_FAILURE;
		goto out;
	} else if (type != SSH2_AGENT_SIGN_RESPONSE) {
		r = SSH_ERR_INVALID_FORMAT;
		goto out;
	}
	if ((r = FUNC5(msg, &sig, &len)) != 0)
		goto out;
	/* Check what we actually got back from the agent. */
	if ((r = FUNC11(sig, len, alg)) != 0)
		goto out;
	/* success */
	*sigp = sig;
	*lenp = len;
	sig = NULL;
	len = 0;
	r = 0;
 out:
	FUNC2(sig, len);
	FUNC4(msg);
	return r;
}