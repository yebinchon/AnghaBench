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
struct pam_ssh_key {char* comment; struct sshkey* key; } ;
typedef  int /*<<< orphan*/  fn ;

/* Variables and functions */
 int /*<<< orphan*/  PAM_LOG_DEBUG ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct pam_ssh_key* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int FUNC3 (char*,int,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct sshkey*) ; 
 int FUNC5 (char*,char const*,struct sshkey**,char**) ; 

__attribute__((used)) static struct pam_ssh_key *
FUNC6(const char *dir, const char *kfn, const char *passphrase,
    int nullok)
{
	char fn[PATH_MAX];
	struct pam_ssh_key *psk;
	struct sshkey *key;
	char *comment;
	int ret;

	if (FUNC3(fn, sizeof(fn), "%s/%s", dir, kfn) > (int)sizeof(fn))
		return (NULL);
	/*
	 * If the key is unencrypted, OpenSSL ignores the passphrase, so
	 * it will seem like the user typed in the right one.  This allows
	 * a user to circumvent nullok by providing a dummy passphrase.
	 * Verify that the key really *is* encrypted by trying to load it
	 * with an empty passphrase, and if the key is not encrypted,
	 * accept only an empty passphrase.
	 */
	ret = FUNC5(fn, "", &key, &comment);
	if (ret == 0 && !(*passphrase == '\0' && nullok)) {
		FUNC4(key);
		return (NULL);
	}
	if (ret != 0)
		ret = FUNC5(fn, passphrase, &key, &comment);
	if (ret != 0) {
		FUNC2(PAM_LOG_DEBUG, "failed to load key from %s", fn);
		return (NULL);
	}

	FUNC2(PAM_LOG_DEBUG, "loaded '%s' from %s", comment, fn);
	if ((psk = FUNC1(sizeof(*psk))) == NULL) {
		FUNC4(key);
		FUNC0(comment);
		return (NULL);
	}
	psk->key = key;
	psk->comment = comment;
	return (psk);
}