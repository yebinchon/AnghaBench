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
typedef  int /*<<< orphan*/  DH ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int DH_CHECK_PUBKEY_INVALID ; 
 int DH_CHECK_PUBKEY_TOO_LARGE ; 
 int DH_CHECK_PUBKEY_TOO_SMALL ; 
 int /*<<< orphan*/  DH_F_DH_CHECK_PUB_KEY_EX ; 
 int /*<<< orphan*/  DH_R_CHECK_PUBKEY_INVALID ; 
 int /*<<< orphan*/  DH_R_CHECK_PUBKEY_TOO_LARGE ; 
 int /*<<< orphan*/  DH_R_CHECK_PUBKEY_TOO_SMALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(const DH *dh, const BIGNUM *pub_key)
{
    int errflags = 0;

    if (!FUNC0(dh, pub_key, &errflags))
        return 0;

    if ((errflags & DH_CHECK_PUBKEY_TOO_SMALL) != 0)
        FUNC1(DH_F_DH_CHECK_PUB_KEY_EX, DH_R_CHECK_PUBKEY_TOO_SMALL);
    if ((errflags & DH_CHECK_PUBKEY_TOO_LARGE) != 0)
        FUNC1(DH_F_DH_CHECK_PUB_KEY_EX, DH_R_CHECK_PUBKEY_TOO_LARGE);
    if ((errflags & DH_CHECK_PUBKEY_INVALID) != 0)
        FUNC1(DH_F_DH_CHECK_PUB_KEY_EX, DH_R_CHECK_PUBKEY_INVALID);

    return errflags == 0;
}