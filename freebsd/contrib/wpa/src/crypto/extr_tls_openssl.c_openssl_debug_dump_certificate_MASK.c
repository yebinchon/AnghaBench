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
typedef  int /*<<< orphan*/  serial_num ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  X509 ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  ASN1_INTEGER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(int i, X509 *cert)
{
	char buf[256];
	EVP_PKEY *pkey;
	ASN1_INTEGER *ser;
	char serial_num[128];

	FUNC3(FUNC6(cert), buf, sizeof(buf));

	ser = FUNC5(cert);
	if (ser)
		FUNC9(serial_num, sizeof(serial_num),
					   FUNC0(ser),
					   FUNC1(ser));
	else
		serial_num[0] = '\0';

	pkey = FUNC4(cert);
	FUNC8(MSG_DEBUG, "%d: %s (%s) %s", i, buf,
		   FUNC7(pkey), serial_num);
	FUNC2(pkey);
}