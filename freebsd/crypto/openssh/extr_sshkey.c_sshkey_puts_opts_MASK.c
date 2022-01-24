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
struct sshkey {int dummy; } ;
struct sshbuf {int dummy; } ;
typedef  enum sshkey_serialize_rep { ____Placeholder_sshkey_serialize_rep } sshkey_serialize_rep ;

/* Variables and functions */
 int SSH_ERR_ALLOC_FAIL ; 
 int /*<<< orphan*/  FUNC0 (struct sshbuf*) ; 
 struct sshbuf* FUNC1 () ; 
 int FUNC2 (struct sshbuf*,struct sshbuf*) ; 
 int FUNC3 (struct sshkey const*,struct sshbuf*,int /*<<< orphan*/ ,int) ; 

int
FUNC4(const struct sshkey *key, struct sshbuf *b,
    enum sshkey_serialize_rep opts)
{
	struct sshbuf *tmp;
	int r;

	if ((tmp = FUNC1()) == NULL)
		return SSH_ERR_ALLOC_FAIL;
	r = FUNC3(key, tmp, 0, opts);
	if (r == 0)
		r = FUNC2(b, tmp);
	FUNC0(tmp);
	return r;
}