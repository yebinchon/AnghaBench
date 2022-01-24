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
typedef  int /*<<< orphan*/  u_int32 ;
typedef  int /*<<< orphan*/  u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct in6_addr {int dummy; } ;
typedef  int /*<<< orphan*/  sockaddr_u ;
typedef  int /*<<< orphan*/  addr_refid ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int EVP_MAX_MD_SIZE ; 
 int /*<<< orphan*/  EVP_MD_CTX_FLAG_NON_FIPS_ALLOW ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 

u_int32
FUNC14(sockaddr_u *addr)
{
	u_char		digest[EVP_MAX_MD_SIZE];
	u_int32		addr_refid;
	EVP_MD_CTX	*ctx;
	u_int		len;

	if (FUNC8(addr))
		return (FUNC9(addr));

	FUNC7();

	ctx = FUNC4();
#   ifdef EVP_MD_CTX_FLAG_NON_FIPS_ALLOW
	/* MD5 is not used as a crypto hash here. */
	EVP_MD_CTX_set_flags(ctx, EVP_MD_CTX_FLAG_NON_FIPS_ALLOW);
#   endif
	/* [Bug 3457] DON'T use plain EVP_DigestInit! It would kill the
	 * flags! */
	if (!FUNC1(ctx, FUNC6(), NULL)) {
		FUNC13(LOG_ERR,
		    "MD5 init failed");
		FUNC3(ctx);	/* pedantic... but safe */
		FUNC11(1);
	}

	FUNC2(ctx, (u_char *)FUNC10(addr),
	    sizeof(struct in6_addr));
	FUNC0(ctx, digest, &len);
	FUNC3(ctx);
	FUNC12(&addr_refid, digest, sizeof(addr_refid));
	return (addr_refid);
}