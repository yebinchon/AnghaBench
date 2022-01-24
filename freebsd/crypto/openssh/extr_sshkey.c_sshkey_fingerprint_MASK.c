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
typedef  enum sshkey_fp_rep { ____Placeholder_sshkey_fp_rep } sshkey_fp_rep ;

/* Variables and functions */
 int SSH_DIGEST_MD5 ; 
#define  SSH_FP_BASE64 132 
#define  SSH_FP_BUBBLEBABBLE 131 
#define  SSH_FP_DEFAULT 130 
#define  SSH_FP_HEX 129 
#define  SSH_FP_RANDOMART 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 char* FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,struct sshkey const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (struct sshkey const*,int,int /*<<< orphan*/ **,size_t*) ; 

char *
FUNC8(const struct sshkey *k, int dgst_alg,
    enum sshkey_fp_rep dgst_rep)
{
	char *retval = NULL;
	u_char *dgst_raw;
	size_t dgst_raw_len;

	if (FUNC7(k, dgst_alg, &dgst_raw, &dgst_raw_len) != 0)
		return NULL;
	switch (dgst_rep) {
	case SSH_FP_DEFAULT:
		if (dgst_alg == SSH_DIGEST_MD5) {
			retval = FUNC3(FUNC6(dgst_alg),
			    dgst_raw, dgst_raw_len);
		} else {
			retval = FUNC1(FUNC6(dgst_alg),
			    dgst_raw, dgst_raw_len);
		}
		break;
	case SSH_FP_HEX:
		retval = FUNC3(FUNC6(dgst_alg),
		    dgst_raw, dgst_raw_len);
		break;
	case SSH_FP_BASE64:
		retval = FUNC1(FUNC6(dgst_alg),
		    dgst_raw, dgst_raw_len);
		break;
	case SSH_FP_BUBBLEBABBLE:
		retval = FUNC2(dgst_raw, dgst_raw_len);
		break;
	case SSH_FP_RANDOMART:
		retval = FUNC4(FUNC6(dgst_alg),
		    dgst_raw, dgst_raw_len, k);
		break;
	default:
		FUNC0(dgst_raw, dgst_raw_len);
		FUNC5(dgst_raw);
		return NULL;
	}
	FUNC0(dgst_raw, dgst_raw_len);
	FUNC5(dgst_raw);
	return retval;
}