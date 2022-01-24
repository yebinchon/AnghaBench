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
struct sshkey {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SSHKEY_SERIALIZE_DEFAULT ; 
 int /*<<< orphan*/  SSH_DIGEST_MAX_LENGTH ; 
 int SSH_ERR_ALLOC_FAIL ; 
 int SSH_ERR_INTERNAL_ERROR ; 
 int SSH_ERR_INVALID_ARGUMENT ; 
 int /*<<< orphan*/ * FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 size_t FUNC3 (int) ; 
 int FUNC4 (int,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct sshkey const*,int /*<<< orphan*/ **,size_t*,int,int /*<<< orphan*/ ) ; 

int
FUNC6(const struct sshkey *k, int dgst_alg,
    u_char **retp, size_t *lenp)
{
	u_char *blob = NULL, *ret = NULL;
	size_t blob_len = 0;
	int r = SSH_ERR_INTERNAL_ERROR;

	if (retp != NULL)
		*retp = NULL;
	if (lenp != NULL)
		*lenp = 0;
	if (FUNC3(dgst_alg) == 0) {
		r = SSH_ERR_INVALID_ARGUMENT;
		goto out;
	}
	if ((r = FUNC5(k, &blob, &blob_len, 1, SSHKEY_SERIALIZE_DEFAULT))
	    != 0)
		goto out;
	if ((ret = FUNC0(1, SSH_DIGEST_MAX_LENGTH)) == NULL) {
		r = SSH_ERR_ALLOC_FAIL;
		goto out;
	}
	if ((r = FUNC4(dgst_alg, blob, blob_len,
	    ret, SSH_DIGEST_MAX_LENGTH)) != 0)
		goto out;
	/* success */
	if (retp != NULL) {
		*retp = ret;
		ret = NULL;
	}
	if (lenp != NULL)
		*lenp = FUNC3(dgst_alg);
	r = 0;
 out:
	FUNC2(ret);
	if (blob != NULL) {
		FUNC1(blob, blob_len);
		FUNC2(blob);
	}
	return r;
}