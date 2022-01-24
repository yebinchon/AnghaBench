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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  PCAP_ERRBUF_SIZE ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 size_t FUNC1 (void*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*,unsigned long,unsigned long) ; 

__attribute__((used)) static int
FUNC4(FILE *fp, void *buf, size_t bytes_to_read, int fail_on_eof,
    char *errbuf)
{
	size_t amt_read;

	amt_read = FUNC1(buf, 1, bytes_to_read, fp);
	if (amt_read != bytes_to_read) {
		if (FUNC0(fp)) {
			FUNC2(errbuf, PCAP_ERRBUF_SIZE,
			    errno, "error reading dump file");
		} else {
			if (amt_read == 0 && !fail_on_eof)
				return (0);	/* EOF */
			FUNC3(errbuf, PCAP_ERRBUF_SIZE,
			    "truncated dump file; tried to read %lu bytes, only got %lu",
			    (unsigned long)bytes_to_read,
			    (unsigned long)amt_read);
		}
		return (-1);
	}
	return (1);
}