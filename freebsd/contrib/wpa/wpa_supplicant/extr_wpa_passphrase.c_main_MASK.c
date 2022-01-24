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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *,size_t,int,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  stdin ; 

int FUNC5(int argc, char *argv[])
{
	unsigned char psk[32];
	int i;
	char *ssid, *passphrase, buf[64], *pos;
	size_t len;

	if (argc < 2) {
		FUNC4("usage: wpa_passphrase <ssid> [passphrase]\n"
			"\nIf passphrase is left out, it will be read from "
			"stdin\n");
		return 1;
	}

	ssid = argv[1];

	if (argc > 2) {
		passphrase = argv[2];
	} else {
		FUNC4("# reading passphrase from stdin\n");
		if (FUNC0(buf, sizeof(buf), stdin) == NULL) {
			FUNC4("Failed to read passphrase\n");
			return 1;
		}
		buf[sizeof(buf) - 1] = '\0';
		pos = buf;
		while (*pos != '\0') {
			if (*pos == '\r' || *pos == '\n') {
				*pos = '\0';
				break;
			}
			pos++;
		}
		passphrase = buf;
	}

	len = FUNC2(passphrase);
	if (len < 8 || len > 63) {
		FUNC4("Passphrase must be 8..63 characters\n");
		return 1;
	}
	if (FUNC1((u8 *) passphrase, len)) {
		FUNC4("Invalid passphrase character\n");
		return 1;
	}

	FUNC3(passphrase, (u8 *) ssid, FUNC2(ssid), 4096, psk, 32);

	FUNC4("network={\n");
	FUNC4("\tssid=\"%s\"\n", ssid);
	FUNC4("\t#psk=\"%s\"\n", passphrase);
	FUNC4("\tpsk=");
	for (i = 0; i < 32; i++)
		FUNC4("%02x", psk[i]);
	FUNC4("\n");
	FUNC4("}\n");

	return 0;
}