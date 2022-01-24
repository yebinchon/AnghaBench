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
typedef  int /*<<< orphan*/  PKCS7_SIGNER_INFO ;
typedef  int /*<<< orphan*/  ASN1_TIME ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  NID_pkcs9_signingTime ; 
 int /*<<< orphan*/  PKCS7_F_PKCS7_ADD0_ATTRIB_SIGNING_TIME ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V_ASN1_UTCTIME ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC3(PKCS7_SIGNER_INFO *si, ASN1_TIME *t)
{
    if (t == NULL && (t = FUNC2(NULL, 0)) == NULL) {
        FUNC1(PKCS7_F_PKCS7_ADD0_ATTRIB_SIGNING_TIME,
                 ERR_R_MALLOC_FAILURE);
        return 0;
    }
    return FUNC0(si, NID_pkcs9_signingTime,
                                      V_ASN1_UTCTIME, t);
}