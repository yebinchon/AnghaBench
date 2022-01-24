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
struct timeval {float tv_sec; scalar_t__ tv_usec; } ;
struct rusage {int /*<<< orphan*/  ru_utime; } ;
struct TYPE_3__ {char* name; char* (* End ) (int /*<<< orphan*/ *,char*) ;int /*<<< orphan*/  (* Update ) (int /*<<< orphan*/ *,unsigned char*,int) ;int /*<<< orphan*/  (* Init ) (int /*<<< orphan*/ *) ;} ;
typedef  int /*<<< orphan*/  DIGEST_CTX ;
typedef  TYPE_1__ Algorithm_t ;

/* Variables and functions */
 int HEX_DIGEST_LENGTH ; 
 int /*<<< orphan*/  RUSAGE_SELF ; 
 int TEST_BLOCK_COUNT ; 
 int TEST_BLOCK_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct rusage*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 char* FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 

__attribute__((used)) static void
FUNC7(const Algorithm_t *alg)
{
	DIGEST_CTX context;
	struct rusage before, after;
	struct timeval total;
	float seconds;
	unsigned char block[TEST_BLOCK_LEN];
	unsigned int i;
	char *p, buf[HEX_DIGEST_LENGTH];

	FUNC2("%s time trial. Digesting %d %d-byte blocks ...",
	    alg->name, TEST_BLOCK_COUNT, TEST_BLOCK_LEN);
	FUNC0(stdout);

	/* Initialize block */
	for (i = 0; i < TEST_BLOCK_LEN; i++)
		block[i] = (unsigned char) (i & 0xff);

	/* Start timer */
	FUNC1(RUSAGE_SELF, &before);

	/* Digest blocks */
	alg->Init(&context);
	for (i = 0; i < TEST_BLOCK_COUNT; i++)
		alg->Update(&context, block, TEST_BLOCK_LEN);
	p = alg->End(&context, buf);

	/* Stop timer */
	FUNC1(RUSAGE_SELF, &after);
	FUNC6(&after.ru_utime, &before.ru_utime, &total);
	seconds = total.tv_sec + (float) total.tv_usec / 1000000;

	FUNC2(" done\n");
	FUNC2("Digest = %s", p);
	FUNC2("\nTime = %f seconds\n", seconds);
	FUNC2("Speed = %f MiB/second\n", (float) TEST_BLOCK_LEN * 
		(float) TEST_BLOCK_COUNT / seconds / (1 << 20));
}