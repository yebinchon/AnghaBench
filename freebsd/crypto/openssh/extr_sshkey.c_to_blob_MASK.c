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
struct sshbuf {int dummy; } ;
typedef  enum sshkey_serialize_rep { ____Placeholder_sshkey_serialize_rep } sshkey_serialize_rep ;

/* Variables and functions */
 int SSH_ERR_ALLOC_FAIL ; 
 int SSH_ERR_INTERNAL_ERROR ; 
 int /*<<< orphan*/ * FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct sshbuf*) ; 
 size_t FUNC3 (struct sshbuf*) ; 
 struct sshbuf* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct sshbuf*) ; 
 int FUNC6 (struct sshkey const*,struct sshbuf*,int,int) ; 

__attribute__((used)) static int
FUNC7(const struct sshkey *key, u_char **blobp, size_t *lenp, int force_plain,
    enum sshkey_serialize_rep opts)
{
	int ret = SSH_ERR_INTERNAL_ERROR;
	size_t len;
	struct sshbuf *b = NULL;

	if (lenp != NULL)
		*lenp = 0;
	if (blobp != NULL)
		*blobp = NULL;
	if ((b = FUNC4()) == NULL)
		return SSH_ERR_ALLOC_FAIL;
	if ((ret = FUNC6(key, b, force_plain, opts)) != 0)
		goto out;
	len = FUNC3(b);
	if (lenp != NULL)
		*lenp = len;
	if (blobp != NULL) {
		if ((*blobp = FUNC0(len)) == NULL) {
			ret = SSH_ERR_ALLOC_FAIL;
			goto out;
		}
		FUNC1(*blobp, FUNC5(b), len);
	}
	ret = 0;
 out:
	FUNC2(b);
	return ret;
}