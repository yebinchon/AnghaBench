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
 int WPA_CIPHER_AES_128_CMAC ; 
 int WPA_CIPHER_BIP_CMAC_256 ; 
 int WPA_CIPHER_BIP_GMAC_128 ; 
 int WPA_CIPHER_BIP_GMAC_256 ; 
 int WPA_CIPHER_CCMP ; 
 int WPA_CIPHER_CCMP_256 ; 
 int WPA_CIPHER_GCMP ; 
 int WPA_CIPHER_GCMP_256 ; 
 int WPA_CIPHER_GTK_NOT_USED ; 
 int WPA_CIPHER_NONE ; 
 int WPA_CIPHER_TKIP ; 
 int WPA_CIPHER_WEP104 ; 
 int WPA_CIPHER_WEP40 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 char* FUNC2 (char const*) ; 

int FUNC3(const char *value)
{
	int val = 0, last;
	char *start, *end, *buf;

	buf = FUNC2(value);
	if (buf == NULL)
		return -1;
	start = buf;

	while (*start != '\0') {
		while (*start == ' ' || *start == '\t')
			start++;
		if (*start == '\0')
			break;
		end = start;
		while (*end != ' ' && *end != '\t' && *end != '\0')
			end++;
		last = *end == '\0';
		*end = '\0';
		if (FUNC1(start, "CCMP-256") == 0)
			val |= WPA_CIPHER_CCMP_256;
		else if (FUNC1(start, "GCMP-256") == 0)
			val |= WPA_CIPHER_GCMP_256;
		else if (FUNC1(start, "CCMP") == 0)
			val |= WPA_CIPHER_CCMP;
		else if (FUNC1(start, "GCMP") == 0)
			val |= WPA_CIPHER_GCMP;
		else if (FUNC1(start, "TKIP") == 0)
			val |= WPA_CIPHER_TKIP;
		else if (FUNC1(start, "WEP104") == 0)
			val |= WPA_CIPHER_WEP104;
		else if (FUNC1(start, "WEP40") == 0)
			val |= WPA_CIPHER_WEP40;
		else if (FUNC1(start, "NONE") == 0)
			val |= WPA_CIPHER_NONE;
		else if (FUNC1(start, "GTK_NOT_USED") == 0)
			val |= WPA_CIPHER_GTK_NOT_USED;
		else if (FUNC1(start, "AES-128-CMAC") == 0)
			val |= WPA_CIPHER_AES_128_CMAC;
		else if (FUNC1(start, "BIP-GMAC-128") == 0)
			val |= WPA_CIPHER_BIP_GMAC_128;
		else if (FUNC1(start, "BIP-GMAC-256") == 0)
			val |= WPA_CIPHER_BIP_GMAC_256;
		else if (FUNC1(start, "BIP-CMAC-256") == 0)
			val |= WPA_CIPHER_BIP_CMAC_256;
		else {
			FUNC0(buf);
			return -1;
		}

		if (last)
			break;
		start = end + 1;
	}
	FUNC0(buf);

	return val;
}