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
struct TYPE_3__ {char* (* End ) (int /*<<< orphan*/ *,char*) ;int /*<<< orphan*/  (* Update ) (int /*<<< orphan*/ *,unsigned char*,unsigned int) ;int /*<<< orphan*/  (* Init ) (int /*<<< orphan*/ *) ;} ;
typedef  int /*<<< orphan*/  DIGEST_CTX ;
typedef  TYPE_1__ Algorithm_t ;

/* Variables and functions */
 int BUFSIZ ; 
 int HEX_DIGEST_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 unsigned int FUNC1 (unsigned char*,int,int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (unsigned char*,int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned char*,unsigned int) ; 
 char* FUNC6 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC7 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void
FUNC8(const Algorithm_t *alg, int tee)
{
	DIGEST_CTX context;
	unsigned int len;
	unsigned char buffer[BUFSIZ];
	char buf[HEX_DIGEST_LENGTH];

	alg->Init(&context);
	while ((len = FUNC1(buffer, 1, BUFSIZ, stdin))) {
		if (tee && len != FUNC2(buffer, 1, len, stdout))
			FUNC0(1, "stdout");
		alg->Update(&context, buffer, len);
	}
	FUNC3("%s\n", alg->End(&context, buf));
}