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
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  dom ;
typedef  int /*<<< orphan*/  c448_error_t ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  C448_FAILURE ; 
 int /*<<< orphan*/  C448_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 size_t UINT8_MAX ; 
 size_t FUNC3 (char const*) ; 

__attribute__((used)) static c448_error_t FUNC4(EVP_MD_CTX *hashctx, uint8_t prehashed,
                                       uint8_t for_prehash,
                                       const uint8_t *context,
                                       size_t context_len)
{
    const char *dom_s = "SigEd448";
    uint8_t dom[2];

    if (context_len > UINT8_MAX)
        return C448_FAILURE;

    dom[0] = (uint8_t)(2 - (prehashed == 0 ? 1 : 0)
                       - (for_prehash == 0 ? 1 : 0));
    dom[1] = (uint8_t)context_len;

    if (!FUNC0(hashctx, FUNC2(), NULL)
            || !FUNC1(hashctx, dom_s, FUNC3(dom_s))
            || !FUNC1(hashctx, dom, sizeof(dom))
            || !FUNC1(hashctx, context, context_len))
        return C448_FAILURE;

    return C448_SUCCESS;
}