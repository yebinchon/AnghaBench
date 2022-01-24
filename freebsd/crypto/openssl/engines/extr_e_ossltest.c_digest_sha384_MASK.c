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
typedef  int /*<<< orphan*/  SHA512_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int /*<<< orphan*/  EVP_MD_FLAG_DIGALGID_ABSENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NID_sha384 ; 
 int /*<<< orphan*/  NID_sha384WithRSAEncryption ; 
 int /*<<< orphan*/  SHA384_DIGEST_LENGTH ; 
 int /*<<< orphan*/  SHA512_CBLOCK ; 
 int /*<<< orphan*/  const* _hidden_sha384_md ; 
 int /*<<< orphan*/  digest_sha384_final ; 
 int /*<<< orphan*/  digest_sha384_init ; 
 int /*<<< orphan*/  digest_sha512_update ; 

__attribute__((used)) static const EVP_MD *FUNC9(void)
{
    if (_hidden_sha384_md == NULL) {
        EVP_MD *md;

        if ((md = FUNC1(NID_sha384, NID_sha384WithRSAEncryption)) == NULL
            || !FUNC7(md, SHA384_DIGEST_LENGTH)
            || !FUNC6(md, SHA512_CBLOCK)
            || !FUNC2(md,
                                             sizeof(EVP_MD *) + sizeof(SHA512_CTX))
            || !FUNC4(md, EVP_MD_FLAG_DIGALGID_ABSENT)
            || !FUNC5(md, digest_sha384_init)
            || !FUNC8(md, digest_sha512_update)
            || !FUNC3(md, digest_sha384_final)) {
            FUNC0(md);
            md = NULL;
        }
        _hidden_sha384_md = md;
    }
    return _hidden_sha384_md;
}