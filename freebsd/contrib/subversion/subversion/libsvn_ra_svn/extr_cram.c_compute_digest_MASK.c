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
typedef  int /*<<< orphan*/  secret ;
typedef  int apr_size_t ;
typedef  int /*<<< orphan*/  apr_md5_ctx_t ;

/* Variables and functions */
 int APR_MD5_DIGESTSIZE ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (char const*) ; 

__attribute__((used)) static void FUNC7(unsigned char *digest, const char *challenge,
                           const char *password)
{
  unsigned char secret[64];
  apr_size_t len = FUNC6(password), i;
  apr_md5_ctx_t ctx;

  /* Munge the password into a 64-byte secret. */
  FUNC5(secret, 0, sizeof(secret));
  if (len <= sizeof(secret))
    FUNC4(secret, password, len);
  else
    FUNC0(secret, password, len);

  /* Compute MD5(secret XOR opad, MD5(secret XOR ipad, challenge)),
   * where ipad is a string of 0x36 and opad is a string of 0x5c. */
  for (i = 0; i < sizeof(secret); i++)
    secret[i] ^= 0x36;
  FUNC2(&ctx);
  FUNC3(&ctx, secret, sizeof(secret));
  FUNC3(&ctx, challenge, FUNC6(challenge));
  FUNC1(digest, &ctx);
  for (i = 0; i < sizeof(secret); i++)
    secret[i] ^= (0x36 ^ 0x5c);
  FUNC2(&ctx);
  FUNC3(&ctx, secret, sizeof(secret));
  FUNC3(&ctx, digest, APR_MD5_DIGESTSIZE);
  FUNC1(digest, &ctx);
}