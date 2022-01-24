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
struct scard_data {int dummy; } ;
struct eapol_test_data {int /*<<< orphan*/  pcsc_reader; } ;
typedef  int /*<<< orphan*/  imsi ;
typedef  int /*<<< orphan*/  _rand ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_WARNING ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int,int) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct scard_data*) ; 
 scalar_t__ FUNC5 (struct scard_data*,char*,size_t*) ; 
 scalar_t__ FUNC6 (struct scard_data*,unsigned char*,unsigned char*,unsigned char*) ; 
 struct scard_data* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct scard_data*,char*) ; 
 int wpa_debug_level ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC10(struct eapol_test_data *e, int argc, char *argv[])
{
	struct scard_data *scard;
	size_t len;
	char imsi[20];
	unsigned char _rand[16];
	unsigned char sres[4];
	unsigned char kc[8];
	int num_triplets;
	int i;
	size_t j;

	if (argc < 2 || ((num_triplets = FUNC0(argv[1])) <= 0)) {
		FUNC3("invalid parameters for sim command\n");
		return -1;
	}

	if (argc <= 2 || FUNC2(argv[2], "debug") != 0) {
		/* disable debug output */
		wpa_debug_level = 99;
	}

	scard = FUNC7(e->pcsc_reader);
	if (scard == NULL) {
		FUNC3("Failed to open smartcard connection\n");
		return -1;
	}
	if (FUNC8(scard, argv[0])) {
		FUNC9(MSG_WARNING, "PIN validation failed");
		FUNC4(scard);
		return -1;
	}

	len = sizeof(imsi);
	if (FUNC5(scard, imsi, &len)) {
		FUNC4(scard);
		return -1;
	}

	for (i = 0; i < num_triplets; i++) {
		FUNC1(_rand, i, sizeof(_rand));
		if (FUNC6(scard, _rand, sres, kc))
			break;

		/* IMSI:Kc:SRES:RAND */
		for (j = 0; j < len; j++)
			FUNC3("%c", imsi[j]);
		FUNC3(":");
		for (j = 0; j < 8; j++)
			FUNC3("%02X", kc[j]);
		FUNC3(":");
		for (j = 0; j < 4; j++)
			FUNC3("%02X", sres[j]);
		FUNC3(":");
		for (j = 0; j < 16; j++)
			FUNC3("%02X", _rand[j]);
		FUNC3("\n");
	}

	FUNC4(scard);

	return 0;
}