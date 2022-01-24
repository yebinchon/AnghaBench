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
struct ntlmv2_key {unsigned char* signkey; int /*<<< orphan*/  sealkey; int /*<<< orphan*/ * signsealkey; scalar_t__ seq; } ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,unsigned char*) ; 
 char* a2i_sealmagic ; 
 char* a2i_signmagic ; 
 char* i2a_sealmagic ; 
 char* i2a_signmagic ; 
 int FUNC7 (char const*) ; 

void
FUNC8(struct ntlmv2_key *key, int acceptor, int sealsign,
		  unsigned char *data, size_t len)
{
    unsigned char out[16];
    EVP_MD_CTX *ctx;
    const char *signmagic;
    const char *sealmagic;

    if (acceptor) {
	signmagic = a2i_signmagic;
	sealmagic = a2i_sealmagic;
    } else {
	signmagic = i2a_signmagic;
	sealmagic = i2a_sealmagic;
    }

    key->seq = 0;

    ctx = FUNC3();
    FUNC1(ctx, FUNC5(), NULL);
    FUNC2(ctx, data, len);
    FUNC2(ctx, signmagic, FUNC7(signmagic) + 1);
    FUNC0(ctx, key->signkey, NULL);

    FUNC1(ctx, FUNC5(), NULL);
    FUNC2(ctx, data, len);
    FUNC2(ctx, sealmagic, FUNC7(sealmagic) + 1);
    FUNC0(ctx, out, NULL);
    FUNC4(ctx);

    FUNC6(&key->sealkey, 16, out);
    if (sealsign)
	key->signsealkey = &key->sealkey;
}