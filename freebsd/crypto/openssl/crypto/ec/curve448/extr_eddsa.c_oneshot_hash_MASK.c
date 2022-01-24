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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  c448_error_t ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  C448_FAILURE ; 
 int /*<<< orphan*/  C448_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static c448_error_t FUNC6(uint8_t *out, size_t outlen,
                                 const uint8_t *in, size_t inlen)
{
    EVP_MD_CTX *hashctx = FUNC4();

    if (hashctx == NULL)
        return C448_FAILURE;

    if (!FUNC1(hashctx, FUNC5(), NULL)
            || !FUNC2(hashctx, in, inlen)
            || !FUNC0(hashctx, out, outlen)) {
        FUNC3(hashctx);
        return C448_FAILURE;
    }

    FUNC3(hashctx);
    return C448_SUCCESS;
}