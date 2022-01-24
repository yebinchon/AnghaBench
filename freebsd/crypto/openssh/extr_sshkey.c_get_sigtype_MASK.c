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
struct sshbuf {int dummy; } ;

/* Variables and functions */
 int SSH_ERR_ALLOC_FAIL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sshbuf*) ; 
 struct sshbuf* FUNC2 (int /*<<< orphan*/  const*,size_t) ; 
 int FUNC3 (struct sshbuf*,char**,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(const u_char *sig, size_t siglen, char **sigtypep)
{
	int r;
	struct sshbuf *b = NULL;
	char *sigtype = NULL;

	if (sigtypep != NULL)
		*sigtypep = NULL;
	if ((b = FUNC2(sig, siglen)) == NULL)
		return SSH_ERR_ALLOC_FAIL;
	if ((r = FUNC3(b, &sigtype, NULL)) != 0)
		goto out;
	/* success */
	if (sigtypep != NULL) {
		*sigtypep = sigtype;
		sigtype = NULL;
	}
	r = 0;
 out:
	FUNC0(sigtype);
	FUNC1(b);
	return r;
}