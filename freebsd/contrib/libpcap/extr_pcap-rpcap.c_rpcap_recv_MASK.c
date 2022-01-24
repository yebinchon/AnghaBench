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
typedef  size_t uint32 ;
typedef  int /*<<< orphan*/  SOCKET ;

/* Variables and functions */
 int /*<<< orphan*/  PCAP_ERRBUF_SIZE ; 
 int SOCK_EOF_IS_ERROR ; 
 int SOCK_RECEIVEALL_YES ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,void*,size_t,int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(SOCKET sock, void *buffer, size_t toread, uint32 *plen, char *errbuf)
{
	int nread;

	if (toread > *plen)
	{
		/* The server sent us a bad message */
		FUNC0(errbuf, PCAP_ERRBUF_SIZE, "Message payload is too short");
		return -1;
	}
	nread = FUNC1(sock, buffer, toread,
	    SOCK_RECEIVEALL_YES|SOCK_EOF_IS_ERROR, errbuf, PCAP_ERRBUF_SIZE);
	if (nread == -1)
	{
		return -1;
	}
	*plen -= nread;
	return 0;
}