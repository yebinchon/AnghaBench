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
typedef  int /*<<< orphan*/  u_char ;
struct sshkey {scalar_t__ type; } ;
struct sshbuf {int dummy; } ;

/* Variables and functions */
 scalar_t__ KEY_UNSPEC ; 
 int /*<<< orphan*/  SSH2_AGENTC_REMOVE_IDENTITY ; 
 int SSH_ERR_ALLOC_FAIL ; 
 int SSH_ERR_INVALID_ARGUMENT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int,struct sshbuf*,struct sshbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct sshbuf*) ; 
 int FUNC5 (struct sshbuf*,int /*<<< orphan*/ *) ; 
 struct sshbuf* FUNC6 () ; 
 int FUNC7 (struct sshbuf*,int /*<<< orphan*/ *,size_t) ; 
 int FUNC8 (struct sshbuf*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct sshkey*,int /*<<< orphan*/ **,size_t*) ; 

int
FUNC10(int sock, struct sshkey *key)
{
	struct sshbuf *msg;
	int r;
	u_char type, *blob = NULL;
	size_t blen;

	if ((msg = FUNC6()) == NULL)
		return SSH_ERR_ALLOC_FAIL;

	if (key->type != KEY_UNSPEC) {
		if ((r = FUNC9(key, &blob, &blen)) != 0)
			goto out;
		if ((r = FUNC8(msg,
		    SSH2_AGENTC_REMOVE_IDENTITY)) != 0 ||
		    (r = FUNC7(msg, blob, blen)) != 0)
			goto out;
	} else {
		r = SSH_ERR_INVALID_ARGUMENT;
		goto out;
	}
	if ((r = FUNC3(sock, msg, msg)) != 0)
		goto out;
	if ((r = FUNC5(msg, &type)) != 0)
		goto out;
	r = FUNC0(type);
 out:
	if (blob != NULL) {
		FUNC1(blob, blen);
		FUNC2(blob);
	}
	FUNC4(msg);
	return r;
}