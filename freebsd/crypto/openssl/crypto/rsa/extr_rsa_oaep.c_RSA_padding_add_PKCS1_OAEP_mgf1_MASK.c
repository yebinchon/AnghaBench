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
typedef  int /*<<< orphan*/  seedmask ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (void*,int,unsigned char*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int EVP_MAX_MD_SIZE ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int) ; 
 unsigned char* FUNC5 (int) ; 
 scalar_t__ FUNC6 (unsigned char*,int,unsigned char*,int,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC7 (unsigned char*,int) ; 
 int /*<<< orphan*/  RSA_F_RSA_PADDING_ADD_PKCS1_OAEP_MGF1 ; 
 int /*<<< orphan*/  RSA_R_DATA_TOO_LARGE_FOR_KEY_SIZE ; 
 int /*<<< orphan*/  RSA_R_KEY_SIZE_TOO_SMALL ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*,unsigned char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*,int /*<<< orphan*/ ,int) ; 

int FUNC11(unsigned char *to, int tlen,
                                    const unsigned char *from, int flen,
                                    const unsigned char *param, int plen,
                                    const EVP_MD *md, const EVP_MD *mgf1md)
{
    int rv = 0;
    int i, emlen = tlen - 1;
    unsigned char *db, *seed;
    unsigned char *dbmask = NULL;
    unsigned char seedmask[EVP_MAX_MD_SIZE];
    int mdlen, dbmask_len = 0;

    if (md == NULL)
        md = FUNC2();
    if (mgf1md == NULL)
        mgf1md = md;

    mdlen = FUNC1(md);

    if (flen > emlen - 2 * mdlen - 1) {
        FUNC8(RSA_F_RSA_PADDING_ADD_PKCS1_OAEP_MGF1,
               RSA_R_DATA_TOO_LARGE_FOR_KEY_SIZE);
        return 0;
    }

    if (emlen < 2 * mdlen + 1) {
        FUNC8(RSA_F_RSA_PADDING_ADD_PKCS1_OAEP_MGF1,
               RSA_R_KEY_SIZE_TOO_SMALL);
        return 0;
    }

    to[0] = 0;
    seed = to + 1;
    db = to + mdlen + 1;

    if (!FUNC0((void *)param, plen, db, NULL, md, NULL))
        goto err;
    FUNC10(db + mdlen, 0, emlen - flen - 2 * mdlen - 1);
    db[emlen - flen - mdlen - 1] = 0x01;
    FUNC9(db + emlen - flen - mdlen, from, (unsigned int)flen);
    if (FUNC7(seed, mdlen) <= 0)
        goto err;

    dbmask_len = emlen - mdlen;
    dbmask = FUNC5(dbmask_len);
    if (dbmask == NULL) {
        FUNC8(RSA_F_RSA_PADDING_ADD_PKCS1_OAEP_MGF1, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    if (FUNC6(dbmask, dbmask_len, seed, mdlen, mgf1md) < 0)
        goto err;
    for (i = 0; i < dbmask_len; i++)
        db[i] ^= dbmask[i];

    if (FUNC6(seedmask, mdlen, db, dbmask_len, mgf1md) < 0)
        goto err;
    for (i = 0; i < mdlen; i++)
        seed[i] ^= seedmask[i];
    rv = 1;

 err:
    FUNC3(seedmask, sizeof(seedmask));
    FUNC4(dbmask, dbmask_len);
    return rv;
}