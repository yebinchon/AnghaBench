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
typedef  int /*<<< orphan*/  BIO ;
typedef  int /*<<< orphan*/  ASN1_VALUE ;
typedef  int /*<<< orphan*/  ASN1_ITEM ;

/* Variables and functions */
 int /*<<< orphan*/  ASN1_F_B64_WRITE_ASN1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC8(BIO *out, ASN1_VALUE *val, BIO *in, int flags,
                          const ASN1_ITEM *it)
{
    BIO *b64;
    int r;
    b64 = FUNC4(FUNC1());
    if (b64 == NULL) {
        FUNC0(ASN1_F_B64_WRITE_ASN1, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    /*
     * prepend the b64 BIO so all data is base64 encoded.
     */
    out = FUNC6(b64, out);
    r = FUNC7(out, val, in, flags, it);
    (void)FUNC2(out);
    FUNC5(out);
    FUNC3(b64);
    return r;
}