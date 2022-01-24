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
 int WPA_CIPHER_NONE ; 
 int WPA_CIPHER_TKIP ; 
 int FUNC0 (char*,int,char*,char*) ; 
 scalar_t__ FUNC1 (int,int) ; 

int FUNC2(char *start, char *end, int ciphers, const char *delim)
{
	char *pos = start;
	int ret;

	if (ciphers & WPA_CIPHER_CCMP_256) {
		ret = FUNC0(pos, end - pos, "%sCCMP-256",
				  pos == start ? "" : delim);
		if (FUNC1(end - pos, ret))
			return -1;
		pos += ret;
	}
	if (ciphers & WPA_CIPHER_GCMP_256) {
		ret = FUNC0(pos, end - pos, "%sGCMP-256",
				  pos == start ? "" : delim);
		if (FUNC1(end - pos, ret))
			return -1;
		pos += ret;
	}
	if (ciphers & WPA_CIPHER_CCMP) {
		ret = FUNC0(pos, end - pos, "%sCCMP",
				  pos == start ? "" : delim);
		if (FUNC1(end - pos, ret))
			return -1;
		pos += ret;
	}
	if (ciphers & WPA_CIPHER_GCMP) {
		ret = FUNC0(pos, end - pos, "%sGCMP",
				  pos == start ? "" : delim);
		if (FUNC1(end - pos, ret))
			return -1;
		pos += ret;
	}
	if (ciphers & WPA_CIPHER_TKIP) {
		ret = FUNC0(pos, end - pos, "%sTKIP",
				  pos == start ? "" : delim);
		if (FUNC1(end - pos, ret))
			return -1;
		pos += ret;
	}
	if (ciphers & WPA_CIPHER_AES_128_CMAC) {
		ret = FUNC0(pos, end - pos, "%sAES-128-CMAC",
				  pos == start ? "" : delim);
		if (FUNC1(end - pos, ret))
			return -1;
		pos += ret;
	}
	if (ciphers & WPA_CIPHER_BIP_GMAC_128) {
		ret = FUNC0(pos, end - pos, "%sBIP-GMAC-128",
				  pos == start ? "" : delim);
		if (FUNC1(end - pos, ret))
			return -1;
		pos += ret;
	}
	if (ciphers & WPA_CIPHER_BIP_GMAC_256) {
		ret = FUNC0(pos, end - pos, "%sBIP-GMAC-256",
				  pos == start ? "" : delim);
		if (FUNC1(end - pos, ret))
			return -1;
		pos += ret;
	}
	if (ciphers & WPA_CIPHER_BIP_CMAC_256) {
		ret = FUNC0(pos, end - pos, "%sBIP-CMAC-256",
				  pos == start ? "" : delim);
		if (FUNC1(end - pos, ret))
			return -1;
		pos += ret;
	}
	if (ciphers & WPA_CIPHER_NONE) {
		ret = FUNC0(pos, end - pos, "%sNONE",
				  pos == start ? "" : delim);
		if (FUNC1(end - pos, ret))
			return -1;
		pos += ret;
	}

	return pos - start;
}