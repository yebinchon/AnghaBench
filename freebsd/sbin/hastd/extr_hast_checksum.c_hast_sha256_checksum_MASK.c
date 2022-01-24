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
typedef  int /*<<< orphan*/  SHA256_CTX ;

/* Variables and functions */
 size_t SHA256_DIGEST_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char const*,size_t) ; 

__attribute__((used)) static void
FUNC3(const unsigned char *data, size_t size,
    unsigned char *hash, size_t *hsizep)
{
	SHA256_CTX ctx;

	FUNC1(&ctx);
	FUNC2(&ctx, data, size);
	FUNC0(hash, &ctx);
	*hsizep = SHA256_DIGEST_LENGTH;
}