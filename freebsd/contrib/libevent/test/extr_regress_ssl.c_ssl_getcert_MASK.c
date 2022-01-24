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
 int /*<<< orphan*/ * FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/ * FUNC16 () ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 

X509 *
FUNC19(void)
{
	/* Dummy code to make a quick-and-dirty valid certificate with
	   OpenSSL.  Don't copy this code into your own program! It does a
	   number of things in a stupid and insecure way. */
	X509 *x509 = NULL;
	X509_NAME *name = NULL;
	EVP_PKEY *key = FUNC16();
	int nid;
	time_t now = FUNC17(NULL);

	FUNC18(*key);

	x509 = FUNC9();
	FUNC18(*x509);
	FUNC18(0 != FUNC13(x509, 2));
	FUNC18(0 != FUNC0(FUNC8(x509),
		(long)now));

	name = FUNC4();
	FUNC18(*name);
	nid = FUNC2("commonName");
	FUNC18(NID_undef != nid);
	FUNC18(0 != FUNC3(
		    name, nid, MBSTRING_ASC, (unsigned char*)"example.com",
		    -1, -1, 0));

	FUNC12(x509, name);
	FUNC10(x509, name);

	FUNC15(FUNC7(x509), 0, &now);
	now += 3600;
	FUNC15(FUNC6(x509), 0, &now);
	FUNC11(x509, key);
	FUNC18(0 != FUNC14(x509, key, FUNC1()));

	return x509;
end:
	FUNC5(x509);
	return NULL;
}