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

/* Variables and functions */
 int SSH_ERR_INVALID_ARGUMENT ; 
 int SSH_ERR_SIGN_ALG_UNSUPPORTED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/  const*,size_t,char**) ; 
 char* FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 

int
FUNC4(const u_char *sig, size_t siglen,
    const char *requested_alg)
{
	const char *expected_alg;
	char *sigtype = NULL;
	int r;

	if (requested_alg == NULL)
		return 0;
	if ((expected_alg = FUNC2(requested_alg)) == NULL)
		return SSH_ERR_INVALID_ARGUMENT;
	if ((r = FUNC1(sig, siglen, &sigtype)) != 0)
		return r;
	r = FUNC3(expected_alg, sigtype) == 0;
	FUNC0(sigtype);
	return r ? 0 : SSH_ERR_SIGN_ALG_UNSUPPORTED;
}