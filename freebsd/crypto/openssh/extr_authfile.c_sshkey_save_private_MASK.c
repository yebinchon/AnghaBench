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

/* Variables and functions */
 int SSH_ERR_ALLOC_FAIL ; 
 int /*<<< orphan*/  FUNC0 (struct sshbuf*) ; 
 struct sshbuf* FUNC1 () ; 
 int FUNC2 (struct sshkey*,struct sshbuf*,char const*,char const*,int,char const*,int) ; 
 int FUNC3 (struct sshbuf*,char const*) ; 

int
FUNC4(struct sshkey *key, const char *filename,
    const char *passphrase, const char *comment,
    int force_new_format, const char *new_format_cipher, int new_format_rounds)
{
	struct sshbuf *keyblob = NULL;
	int r;

	if ((keyblob = FUNC1()) == NULL)
		return SSH_ERR_ALLOC_FAIL;
	if ((r = FUNC2(key, keyblob, passphrase, comment,
	    force_new_format, new_format_cipher, new_format_rounds)) != 0)
		goto out;
	if ((r = FUNC3(keyblob, filename)) != 0)
		goto out;
	r = 0;
 out:
	FUNC0(keyblob);
	return r;
}