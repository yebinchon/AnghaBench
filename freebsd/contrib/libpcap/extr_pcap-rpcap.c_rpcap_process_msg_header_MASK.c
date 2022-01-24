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
typedef  int /*<<< orphan*/  uint16 ;
struct rpcap_header {int dummy; } ;
typedef  int /*<<< orphan*/  SOCKET ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rpcap_header*,int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rpcap_header*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct rpcap_header*,char*) ; 

__attribute__((used)) static int FUNC3(SOCKET sock, uint8 expected_ver, uint8 request_type, struct rpcap_header *header, char *errbuf)
{
	uint16 errcode;

	if (FUNC2(sock, header, errbuf) == -1)
	{
		/* Network error. */
		return -1;
	}

	/*
	 * Did the server specify the version we negotiated?
	 */
	if (FUNC1(sock, expected_ver, header, errbuf) == -1)
		return -1;

	/*
	 * Check the message type.
	 */
	return FUNC0(sock, request_type, header,
	    &errcode, errbuf);
}