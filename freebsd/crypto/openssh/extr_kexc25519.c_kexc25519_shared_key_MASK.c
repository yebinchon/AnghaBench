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
 int CURVE25519_SIZE ; 
 int SSH_ERR_KEY_INVALID_EC_VALUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (struct sshbuf*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sshbuf*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int) ; 

int
FUNC6(const u_char key[CURVE25519_SIZE],
    const u_char pub[CURVE25519_SIZE], struct sshbuf *out)
{
	u_char shared_key[CURVE25519_SIZE];
	int r;

	/* Check for all-zero public key */
	FUNC2(shared_key, CURVE25519_SIZE);
	if (FUNC5(pub, shared_key, CURVE25519_SIZE) == 0)
		return SSH_ERR_KEY_INVALID_EC_VALUE;

	FUNC0(shared_key, key, pub);
#ifdef DEBUG_KEXECDH
	dump_digest("shared secret", shared_key, CURVE25519_SIZE);
#endif
	FUNC4(out);
	r = FUNC3(out, shared_key, CURVE25519_SIZE);
	FUNC2(shared_key, CURVE25519_SIZE);
	return r;
}