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
typedef  int /*<<< orphan*/  EVP_PBE_KEYGEN ;
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  int /*<<< orphan*/  EVP_CIPHER ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  EVP_PBE_TYPE_OUTER ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *) ; 

int FUNC3(int nid, const EVP_CIPHER *cipher, const EVP_MD *md,
                    EVP_PBE_KEYGEN *keygen)
{
    int cipher_nid, md_nid;

    if (cipher)
        cipher_nid = FUNC0(cipher);
    else
        cipher_nid = -1;
    if (md)
        md_nid = FUNC1(md);
    else
        md_nid = -1;

    return FUNC2(EVP_PBE_TYPE_OUTER, nid,
                                cipher_nid, md_nid, keygen);
}