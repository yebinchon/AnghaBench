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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  SN_md5 ; 
 int /*<<< orphan*/  SN_ripemd160 ; 
 int /*<<< orphan*/  SN_sha1 ; 
 char* SN_sha1WithRSA ; 
 int /*<<< orphan*/  SN_sha1WithRSAEncryption ; 

void FUNC24(void)
{
#ifndef OPENSSL_NO_MD4
    FUNC0(FUNC4());
#endif
#ifndef OPENSSL_NO_MD5
    FUNC0(FUNC5());
    FUNC1(SN_md5, "ssl3-md5");
    FUNC0(FUNC6());
#endif
    FUNC0(FUNC9());
    FUNC1(SN_sha1, "ssl3-sha1");
    FUNC1(SN_sha1WithRSAEncryption, SN_sha1WithRSA);
#if !defined(OPENSSL_NO_MDC2) && !defined(OPENSSL_NO_DES)
    FUNC0(FUNC7());
#endif
#ifndef OPENSSL_NO_RMD160
    FUNC0(FUNC8());
    FUNC1(SN_ripemd160, "ripemd");
    FUNC1(SN_ripemd160, "rmd160");
#endif
    FUNC0(FUNC10());
    FUNC0(FUNC11());
    FUNC0(FUNC12());
    FUNC0(FUNC17());
    FUNC0(FUNC18());
    FUNC0(FUNC19());
#ifndef OPENSSL_NO_WHIRLPOOL
    FUNC0(FUNC23());
#endif
#ifndef OPENSSL_NO_SM3
    FUNC0(FUNC22());
#endif
#ifndef OPENSSL_NO_BLAKE2
    FUNC0(FUNC2());
    FUNC0(FUNC3());
#endif
    FUNC0(FUNC13());
    FUNC0(FUNC14());
    FUNC0(FUNC15());
    FUNC0(FUNC16());
    FUNC0(FUNC20());
    FUNC0(FUNC21());
}