#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct session_op {size_t len; unsigned char* dst; int dst_len; void* iv; void* src; int /*<<< orphan*/  op; int /*<<< orphan*/  ses; void* key; int /*<<< orphan*/  keylen; int /*<<< orphan*/  cipher; } ;
struct crypt_op {size_t len; unsigned char* dst; int dst_len; void* iv; void* src; int /*<<< orphan*/  op; int /*<<< orphan*/  ses; void* key; int /*<<< orphan*/  keylen; int /*<<< orphan*/  cipher; } ;
typedef  int /*<<< orphan*/  cs ;
typedef  int /*<<< orphan*/  co ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_3__ {size_t len; int /*<<< orphan*/ * ciphertx; int /*<<< orphan*/  iv; int /*<<< orphan*/  plaintx; int /*<<< orphan*/  key; int /*<<< orphan*/  key_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  CIOCCRYPT ; 
 int /*<<< orphan*/  CIOCGSESSION ; 
 int /*<<< orphan*/  COP_ENCRYPT ; 
 int /*<<< orphan*/  CRYPTO_AES_CTR ; 
 int /*<<< orphan*/  O_RDWR ; 
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 size_t FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,size_t) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,struct session_op*) ; 
 scalar_t__ FUNC5 (unsigned char*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct session_op*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 TYPE_1__* tests ; 
 int /*<<< orphan*/  FUNC9 (char*,size_t) ; 

int
FUNC10(void)
{
	int fd, res;
	size_t i;
	struct session_op cs;
	struct crypt_op co;
	unsigned char buf[36];

	for (i = 0; i < FUNC1(tests); i++) {
		fd = FUNC7("/dev/crypto", O_RDWR, 0);
		if (fd < 0)
			FUNC3(1, "open %zu", i);
		FUNC6(&cs, 0, sizeof(cs));
		cs.cipher = CRYPTO_AES_CTR;
		cs.keylen = tests[i].key_len;
		cs.key = FUNC0(&tests[i].key);
		res = FUNC4(fd, CIOCGSESSION, &cs);
		if (res < 0)
			FUNC3(1, "CIOCGSESSION %zu", i);

		FUNC6(&co, 0, sizeof(co));
		co.ses = cs.ses;
		co.op = COP_ENCRYPT;
		co.len = tests[i].len;
		co.src = FUNC0(&tests[i].plaintx);
		co.dst = buf;
		co.dst_len = sizeof(buf);
		co.iv = FUNC0(&tests[i].iv);
		res = FUNC4(fd, CIOCCRYPT, &co);
		if (res < 0)
			FUNC3(1, "CIOCCRYPT %zu", i);

		if (FUNC5(co.dst, tests[i].ciphertx, tests[i].len)) {
			size_t j;
			FUNC8(" Loc  Actual  Golden\n");
			for (j = 0; j < tests[i].len; j++)
				FUNC8("0x%2zu:  0x%2x    0x%2x\n", j,
					buf[j], tests[i].ciphertx[j]);
			FUNC9("verification failed %zu", i);
		}
		FUNC2(fd);
	}
	return 0;
}