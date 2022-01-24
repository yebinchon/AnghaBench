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
typedef  int /*<<< orphan*/  u_int8_t ;
typedef  int /*<<< orphan*/  u_int64_t ;
typedef  int /*<<< orphan*/  u_int32_t ;
typedef  int /*<<< orphan*/  u_int16_t ;
typedef  int /*<<< orphan*/  u_char ;
struct sshbuf {int dummy; } ;
typedef  struct sshbuf EC_KEY ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sshbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct sshbuf*) ; 
 struct sshbuf* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NID_X9_62_prime256v1 ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct sshbuf*) ; 
 int /*<<< orphan*/  FUNC9 (struct sshbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct sshbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct sshbuf*,struct sshbuf*) ; 
 scalar_t__ FUNC12 (struct sshbuf*,int /*<<< orphan*/ **,size_t*) ; 
 int /*<<< orphan*/  FUNC13 (struct sshbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct sshbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct sshbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct sshbuf*,int /*<<< orphan*/ *) ; 
 struct sshbuf* FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (struct sshbuf*,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static void
FUNC19(u_char *blob, size_t len)
{
	struct sshbuf *p1;
	BIGNUM *bn;
#if defined(OPENSSL_HAS_ECC) && defined(OPENSSL_HAS_NISTP256)
	EC_KEY *eck;
#endif
	u_char *s;
	size_t l;
	u_int8_t u8;
	u_int16_t u16;
	u_int32_t u32;
	u_int64_t u64;

	p1 = FUNC17();
	FUNC1(p1, NULL);
	FUNC0(FUNC18(p1, blob, len), 0);
	FUNC16(p1, &u8);
	FUNC13(p1, &u16);
	FUNC14(p1, &u32);
	FUNC15(p1, &u64);
	if (FUNC12(p1, &s, &l) == 0) {
		FUNC6(s, l);
		FUNC7(s);
	}
	bn = FUNC3();
	FUNC9(p1, bn);
	FUNC2(bn);
	bn = FUNC3();
	FUNC10(p1, bn);
	FUNC2(bn);
#if defined(OPENSSL_HAS_ECC) && defined(OPENSSL_HAS_NISTP256)
	eck = EC_KEY_new_by_curve_name(NID_X9_62_prime256v1);
	ASSERT_PTR_NE(eck, NULL);
	sshbuf_get_eckey(p1, eck);
	EC_KEY_free(eck);
#endif
	FUNC8(p1);
}