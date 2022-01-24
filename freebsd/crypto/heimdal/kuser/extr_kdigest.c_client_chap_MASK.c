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
typedef  int /*<<< orphan*/  EVP_MD_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void const*,size_t) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int MD5_DIGEST_LENGTH ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,int,char**) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 

__attribute__((used)) static void
FUNC10(const void *server_nonce, size_t snoncelen,
	    unsigned char server_identifier,
	    const char *password)
{
    EVP_MD_CTX *ctx;
    unsigned char md[MD5_DIGEST_LENGTH];
    char *h;

    ctx = FUNC3();
    FUNC1(ctx, FUNC5(), NULL);

    FUNC2(ctx, &server_identifier, 1);
    FUNC2(ctx, password, FUNC9(password));
    FUNC2(ctx, server_nonce, snoncelen);
    FUNC0(ctx, md, NULL);

    FUNC4(ctx);

    FUNC7(md, 16, &h);

    FUNC8("responseData=%s\n", h);
    FUNC6(h);
}