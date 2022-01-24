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
typedef  int /*<<< orphan*/  pcap_if_list_t ;
typedef  int /*<<< orphan*/  bpf_u_int32 ;
typedef  scalar_t__ ULONG ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  PCAP_ERRBUF_SIZE ; 
 int /*<<< orphan*/  PCAP_IF_LOOPBACK ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__*) ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (char*,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,char*) ; 
 scalar_t__ FUNC9 (char const*) ; 

int
FUNC10(pcap_if_list_t *devlistp, char *errbuf)
{
	int ret = 0;
	const char *desc;
	char *AdaptersName;
	ULONG NameLength;
	char *name;
	char our_errbuf[PCAP_ERRBUF_SIZE+1];

	/*
	 * Find out how big a buffer we need.
	 *
	 * This call should always return FALSE; if the error is
	 * ERROR_INSUFFICIENT_BUFFER, NameLength will be set to
	 * the size of the buffer we need, otherwise there's a
	 * problem, and NameLength should be set to 0.
	 *
	 * It shouldn't require NameLength to be set, but,
	 * at least as of WinPcap 4.1.3, it checks whether
	 * NameLength is big enough before it checks for a
	 * NULL buffer argument, so, while it'll still do
	 * the right thing if NameLength is uninitialized and
	 * whatever junk happens to be there is big enough
	 * (because the pointer argument will be null), it's
	 * still reading an uninitialized variable.
	 */
	NameLength = 0;
	if (!FUNC1(NULL, &NameLength))
	{
		DWORD last_error = FUNC0();

		if (last_error != ERROR_INSUFFICIENT_BUFFER)
		{
			FUNC8(last_error, our_errbuf);
			FUNC7(errbuf, PCAP_ERRBUF_SIZE,
			    "PacketGetAdapterNames: %s", our_errbuf);
			return (-1);
		}
	}

	if (NameLength <= 0)
		return 0;
	AdaptersName = (char*) FUNC5(NameLength);
	if (AdaptersName == NULL)
	{
		FUNC7(errbuf, PCAP_ERRBUF_SIZE, "Cannot allocate enough memory to list the adapters.");
		return (-1);
	}

	if (!FUNC1(AdaptersName, &NameLength)) {
		FUNC8(FUNC0(), our_errbuf);
		FUNC7(errbuf, PCAP_ERRBUF_SIZE, "PacketGetAdapterNames: %s",
		    our_errbuf);
		FUNC3(AdaptersName);
		return (-1);
	}

	/*
	 * "PacketGetAdapterNames()" returned a list of
	 * null-terminated ASCII interface name strings,
	 * terminated by a null string, followed by a list
	 * of null-terminated ASCII interface description
	 * strings, terminated by a null string.
	 * This means there are two ASCII nulls at the end
	 * of the first list.
	 *
	 * Find the end of the first list; that's the
	 * beginning of the second list.
	 */
	desc = &AdaptersName[0];
	while (*desc != '\0' || *(desc + 1) != '\0')
		desc++;

	/*
 	 * Found it - "desc" points to the first of the two
	 * nulls at the end of the list of names, so the
	 * first byte of the list of descriptions is two bytes
	 * after it.
	 */
	desc += 2;

	/*
	 * Loop over the elements in the first list.
	 */
	name = &AdaptersName[0];
	while (*name != '\0') {
		bpf_u_int32 flags = 0;
#ifdef HAVE_PACKET_IS_LOOPBACK_ADAPTER
		/*
		 * Is this a loopback interface?
		 */
		if (PacketIsLoopbackAdapter(name)) {
			/* Yes */
			flags |= PCAP_IF_LOOPBACK;
		}
#endif
		/*
		 * Get additional flags.
		 */
		if (FUNC4(name, &flags, errbuf) == -1) {
			/*
			 * Failure.
			 */
			ret = -1;
			break;
		}

		/*
		 * Add an entry for this interface.
		 */
		if (FUNC6(devlistp, name, flags, desc,
		    errbuf) == -1) {
			/*
			 * Failure.
			 */
			ret = -1;
			break;
		}
		name += FUNC9(name) + 1;
		desc += FUNC9(desc) + 1;
	}

	FUNC3(AdaptersName);
	return (ret);
}