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
typedef  int /*<<< orphan*/  uint8 ;
typedef  int uint16 ;
struct rpcap_header {int dummy; } ;
typedef  int /*<<< orphan*/  SOCKET ;

/* Variables and functions */
 int PCAP_ERRBUF_SIZE ; 
 int /*<<< orphan*/  RPCAP_MSG_ERROR ; 
 int RPCAP_NETBUF_SIZE ; 
 int /*<<< orphan*/  SOCKBUF_BUFFERIZE ; 
 int /*<<< orphan*/  SOCKBUF_CHECKONLY ; 
 int /*<<< orphan*/  FUNC0 (struct rpcap_header*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned short,int) ; 
 scalar_t__ FUNC1 (char const*,int,char*,int*,int,int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int,char*,int) ; 
 scalar_t__ FUNC3 (char const*) ; 

int
FUNC4(SOCKET sock, uint8 ver, unsigned short errcode, const char *error, char *errbuf)
{
	char sendbuf[RPCAP_NETBUF_SIZE];	/* temporary buffer in which data to be sent is buffered */
	int sendbufidx = 0;			/* index which keeps the number of bytes currently buffered */
	uint16 length;

	length = (uint16)FUNC3(error);

	if (length > PCAP_ERRBUF_SIZE)
		length = PCAP_ERRBUF_SIZE;

	FUNC0((struct rpcap_header *) sendbuf, ver, RPCAP_MSG_ERROR, errcode, length);

	if (FUNC1(NULL, sizeof(struct rpcap_header), NULL, &sendbufidx,
		RPCAP_NETBUF_SIZE, SOCKBUF_CHECKONLY, errbuf, PCAP_ERRBUF_SIZE))
		return -1;

	if (FUNC1(error, length, sendbuf, &sendbufidx,
		RPCAP_NETBUF_SIZE, SOCKBUF_BUFFERIZE, errbuf, PCAP_ERRBUF_SIZE))
		return -1;

	if (FUNC2(sock, sendbuf, sendbufidx, errbuf, PCAP_ERRBUF_SIZE) < 0)
		return -1;

	return 0;
}