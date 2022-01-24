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
 int /*<<< orphan*/  SSLEAY_VERSION ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 char* WDversion ; 
 char* Wpcap_version ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC2 () ; 
 char* FUNC3 () ; 
 char* program_name ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC4(void)
{
	extern char version[];
#ifndef HAVE_PCAP_LIB_VERSION
#if defined(_WIN32) || defined(HAVE_PCAP_VERSION)
	extern char pcap_version[];
#else /* defined(_WIN32) || defined(HAVE_PCAP_VERSION) */
	static char pcap_version[] = "unknown";
#endif /* defined(_WIN32) || defined(HAVE_PCAP_VERSION) */
#endif /* HAVE_PCAP_LIB_VERSION */
	const char *smi_version_string;

#ifdef HAVE_PCAP_LIB_VERSION
#ifdef _WIN32
	(void)fprintf(stderr, "%s version %s, based on tcpdump version %s\n", program_name, WDversion, version);
#else /* _WIN32 */
	(void)fprintf(stderr, "%s version %s\n", program_name, version);
#endif /* _WIN32 */
	(void)fprintf(stderr, "%s\n",pcap_lib_version());
#else /* HAVE_PCAP_LIB_VERSION */
#ifdef _WIN32
	(void)fprintf(stderr, "%s version %s, based on tcpdump version %s\n", program_name, WDversion, version);
	(void)fprintf(stderr, "WinPcap version %s, based on libpcap version %s\n",Wpcap_version, pcap_version);
#else /* _WIN32 */
	(void)FUNC1(stderr, "%s version %s\n", program_name, version);
	(void)FUNC1(stderr, "libpcap version %s\n", pcap_version);
#endif /* _WIN32 */
#endif /* HAVE_PCAP_LIB_VERSION */

#if defined(HAVE_LIBCRYPTO) && defined(SSLEAY_VERSION)
	(void)fprintf (stderr, "%s\n", SSLeay_version(SSLEAY_VERSION));
#endif

	smi_version_string = FUNC2();
	if (smi_version_string != NULL)
		(void)FUNC1 (stderr, "SMI-library: %s\n", smi_version_string);

#if defined(__SANITIZE_ADDRESS__)
	(void)fprintf (stderr, "Compiled with AddressSanitizer/GCC.\n");
#elif defined(__has_feature)
#  if __has_feature(address_sanitizer)
	(void)fprintf (stderr, "Compiled with AddressSanitizer/CLang.\n");
#  endif
#endif /* __SANITIZE_ADDRESS__ or __has_feature */
}