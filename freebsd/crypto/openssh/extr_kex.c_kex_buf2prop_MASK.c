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
typedef  size_t u_int ;
typedef  size_t u_char ;
struct sshbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KEX_COOKIE_LEN ; 
 size_t PROPOSAL_MAX ; 
 int SSH_ERR_ALLOC_FAIL ; 
 char** FUNC0 (size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,...) ; 
 int /*<<< orphan*/  FUNC2 (char**) ; 
 int /*<<< orphan*/ * proposal_names ; 
 int FUNC3 (struct sshbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sshbuf*) ; 
 struct sshbuf* FUNC5 (struct sshbuf*) ; 
 int FUNC6 (struct sshbuf*,char**,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct sshbuf*,size_t*) ; 
 int FUNC8 (struct sshbuf*,size_t*) ; 

int
FUNC9(struct sshbuf *raw, int *first_kex_follows, char ***propp)
{
	struct sshbuf *b = NULL;
	u_char v;
	u_int i;
	char **proposal = NULL;
	int r;

	*propp = NULL;
	if ((proposal = FUNC0(PROPOSAL_MAX, sizeof(char *))) == NULL)
		return SSH_ERR_ALLOC_FAIL;
	if ((b = FUNC5(raw)) == NULL) {
		r = SSH_ERR_ALLOC_FAIL;
		goto out;
	}
	if ((r = FUNC3(b, KEX_COOKIE_LEN)) != 0) /* skip cookie */
		goto out;
	/* extract kex init proposal strings */
	for (i = 0; i < PROPOSAL_MAX; i++) {
		if ((r = FUNC6(b, &(proposal[i]), NULL)) != 0)
			goto out;
		FUNC1("%s: %s", proposal_names[i], proposal[i]);
	}
	/* first kex follows / reserved */
	if ((r = FUNC8(b, &v)) != 0 ||	/* first_kex_follows */
	    (r = FUNC7(b, &i)) != 0)	/* reserved */
		goto out;
	if (first_kex_follows != NULL)
		*first_kex_follows = v;
	FUNC1("first_kex_follows %d ", v);
	FUNC1("reserved %u ", i);
	r = 0;
	*propp = proposal;
 out:
	if (r != 0 && proposal != NULL)
		FUNC2(proposal);
	FUNC4(b);
	return r;
}