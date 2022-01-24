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
typedef  int /*<<< orphan*/  SHA_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NID_sha1 ; 
 int /*<<< orphan*/  NID_sha1WithRSAEncryption ; 
 int /*<<< orphan*/  SHA_CBLOCK ; 
 int /*<<< orphan*/  SHA_DIGEST_LENGTH ; 
 int /*<<< orphan*/  const* sha1_md ; 
 int /*<<< orphan*/  test_sha1_final ; 
 int /*<<< orphan*/  test_sha1_init ; 
 int /*<<< orphan*/  test_sha1_update ; 

__attribute__((used)) static const EVP_MD *FUNC9(void)
{
    if (sha1_md == NULL) {
        EVP_MD *md;

        if ((md = FUNC1(NID_sha1, NID_sha1WithRSAEncryption)) == NULL
            || !FUNC7(md, SHA_DIGEST_LENGTH)
            || !FUNC6(md, SHA_CBLOCK)
            || !FUNC2(md,
                                             sizeof(EVP_MD *) + sizeof(SHA_CTX))
            || !FUNC4(md, 0)
            || !FUNC5(md, test_sha1_init)
            || !FUNC8(md, test_sha1_update)
            || !FUNC3(md, test_sha1_final)) {
            FUNC0(md);
            md = NULL;
        }
        sha1_md = md;
    }
    return sha1_md;
}