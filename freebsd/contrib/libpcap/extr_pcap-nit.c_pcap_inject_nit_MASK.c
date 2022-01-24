#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sockaddr {int /*<<< orphan*/  sa_data; } ;
typedef  int /*<<< orphan*/  sa ;
struct TYPE_3__ {int /*<<< orphan*/  errbuf; int /*<<< orphan*/  fd; } ;
typedef  TYPE_1__ pcap_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCAP_ERRBUF_SIZE ; 
 int /*<<< orphan*/  device ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (struct sockaddr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,void const*,size_t,int /*<<< orphan*/ ,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(pcap_t *p, const void *buf, size_t size)
{
	struct sockaddr sa;
	int ret;

	FUNC0(&sa, 0, sizeof(sa));
	FUNC3(sa.sa_data, device, sizeof(sa.sa_data));
	ret = FUNC2(p->fd, buf, size, 0, &sa, sizeof(sa));
	if (ret == -1) {
		FUNC1(p->errbuf, PCAP_ERRBUF_SIZE,
		    errno, "send");
		return (-1);
	}
	return (ret);
}