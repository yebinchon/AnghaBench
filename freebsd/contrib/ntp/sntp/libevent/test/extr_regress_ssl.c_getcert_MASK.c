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
typedef  scalar_t__ time_t ;
typedef  int /*<<< orphan*/  X509_NAME ;
typedef  int /*<<< orphan*/  X509 ;
typedef  int /*<<< orphan*/  EVP_PKEY ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  MBSTRING_ASC ; 
 int NID_undef ; 
 int FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,unsigned char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/ * FUNC18 () ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int) ; 

__attribute__((used)) static X509 *
FUNC21(void)
{
	/* Dummy code to make a quick-and-dirty valid certificate with
	   OpenSSL.  Don't copy this code into your own program! It does a
	   number of things in a stupid and insecure way. */
	X509 *x509 = NULL;
	X509_NAME *name = NULL;
	EVP_PKEY *key = FUNC18();
	int nid;
	time_t now = FUNC19(NULL);

	FUNC20(*key);

	x509 = FUNC11();
	FUNC20(*x509);
	FUNC20(0 != FUNC15(x509, 2));
	FUNC20(0 != FUNC0(FUNC8(x509),
		(long)now));

	name = FUNC4();
	FUNC20(*name);
	nid = FUNC2("commonName");
	FUNC20(NID_undef != nid);
	FUNC20(0 != FUNC3(
		    name, nid, MBSTRING_ASC, (unsigned char*)"example.com",
		    -1, -1, 0));

	FUNC14(x509, name);
	FUNC12(x509, name);

#if OPENSSL_VERSION_NUMBER < 0x10100000L
	FUNC17(FUNC7(x509), 0, &now);
	now += 3600;
	FUNC17(FUNC6(x509), 0, &now);
#else /* OPENSSL_VERSION_NUMBER >= 0x10100000L */
	X509_time_adj(X509_getm_notBefore(x509), 0, &now);
	now += 3600;
	X509_time_adj(X509_getm_notAfter(x509), 0, &now);
#endif /* OPENSSL_VERSION_NUMBER */
	FUNC13(x509, key);
	FUNC20(0 != FUNC16(x509, key, FUNC1()));

	return x509;
end:
	FUNC5(x509);
	return NULL;
}