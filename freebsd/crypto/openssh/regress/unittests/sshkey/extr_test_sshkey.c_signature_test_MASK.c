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
typedef  int u_char ;
struct sshkey {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (size_t,int) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 (struct sshkey*,int**,size_t*,int const*,size_t,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sshkey*,int*,size_t,int const*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct sshkey *k, struct sshkey *bad, const char *sig_alg,
    const u_char *d, size_t l)
{
	size_t len;
	u_char *sig;

	FUNC0(FUNC5(k, &sig, &len, d, l, sig_alg, 0), 0);
	FUNC3(len, 8);
	FUNC2(sig, NULL);
	FUNC0(FUNC6(k, sig, len, d, l, NULL, 0), 0);
	FUNC1(FUNC6(bad, sig, len, d, l, NULL, 0), 0);
	/* Fuzz test is more comprehensive, this is just a smoke test */
	sig[len - 5] ^= 0x10;
	FUNC1(FUNC6(k, sig, len, d, l, NULL, 0), 0);
	FUNC4(sig);
}