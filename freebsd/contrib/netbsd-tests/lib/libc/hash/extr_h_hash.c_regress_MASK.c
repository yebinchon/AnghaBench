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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  SHA1_CTX ;
typedef  int /*<<< orphan*/  MD5_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/ * FUNC7 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,int) ; 
 scalar_t__ mflag ; 
 int /*<<< orphan*/  stdin ; 
 int FUNC9 (char*) ; 

__attribute__((used)) static void
FUNC10(void)
{
	unsigned char buf[1024];
	unsigned char out[20];
	int len, outlen, last;
	
	while (FUNC7((char *)buf, sizeof(buf), stdin) != NULL) {
		last = 0;

		len = FUNC9((char *)buf);
		FUNC0(buf, len, last);
		if (mflag) {
			MD5_CTX ctx;

			FUNC2(&ctx);
			FUNC3(&ctx, buf, len);
			while (!last &&
			    FUNC7((char *)buf, sizeof(buf), stdin) != NULL) {
				len = FUNC9((char *)buf);
				FUNC0(buf, len, last);
				FUNC3(&ctx, buf, len);
			}
			FUNC1(out, &ctx);
			outlen = 16;
		} else {
			SHA1_CTX ctx;

			FUNC5(&ctx);
			FUNC6(&ctx, buf, len);
			while (!last &&
			    FUNC7((char *)buf, sizeof(buf), stdin) != NULL) {
				len = FUNC9((char *)buf);
				FUNC0(buf, len, last);				
				FUNC6(&ctx, buf, len);
			}
			FUNC4(out, &ctx);
			outlen = 20;
		}
		FUNC8(out, outlen);
	}
}