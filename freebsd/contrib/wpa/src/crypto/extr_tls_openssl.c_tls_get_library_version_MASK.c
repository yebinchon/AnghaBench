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
 int /*<<< orphan*/  OPENSSL_VERSION ; 
 int /*<<< orphan*/  OPENSSL_VERSION_TEXT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SSLEAY_VERSION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,size_t,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(char *buf, size_t buf_len)
{
#if OPENSSL_VERSION_NUMBER >= 0x10100000L && !defined(LIBRESSL_VERSION_NUMBER)
	return os_snprintf(buf, buf_len, "OpenSSL build=%s run=%s",
			   OPENSSL_VERSION_TEXT,
			   OpenSSL_version(OPENSSL_VERSION));
#else
	return FUNC2(buf, buf_len, "OpenSSL build=%s run=%s",
			   OPENSSL_VERSION_TEXT,
			   FUNC1(SSLEAY_VERSION));
#endif
}