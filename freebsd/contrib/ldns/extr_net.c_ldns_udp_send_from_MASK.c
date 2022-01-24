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
typedef  int /*<<< orphan*/  uint8_t ;
struct timeval {int dummy; } ;
struct sockaddr_storage {int dummy; } ;
typedef  int /*<<< orphan*/  socklen_t ;
typedef  int /*<<< orphan*/  ldns_status ;
typedef  int /*<<< orphan*/  ldns_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_STATUS_NETWORK_ERR ; 
 int /*<<< orphan*/  LDNS_STATUS_OK ; 
 int /*<<< orphan*/  LDNS_STATUS_SOCKET_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,struct timeval,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct sockaddr_storage const*,int /*<<< orphan*/ ,struct sockaddr_storage const*,int /*<<< orphan*/ ,struct timeval) ; 
 int /*<<< orphan*/ * FUNC4 (int,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ldns_status
FUNC5(uint8_t **result, ldns_buffer *qbin,
		const struct sockaddr_storage *to  , socklen_t tolen,
		const struct sockaddr_storage *from, socklen_t fromlen,
		struct timeval timeout, size_t *answer_size)
{
	int sockfd;
	uint8_t *answer;

	sockfd = FUNC3(qbin, to, tolen, from, fromlen, timeout);

	if (sockfd == 0) {
		return LDNS_STATUS_SOCKET_ERROR;
	}

	/* wait for an response*/
	if(!FUNC2(sockfd, timeout, 0)) {
		FUNC0(sockfd);
		return LDNS_STATUS_NETWORK_ERR;
	}

        /* set to nonblocking, so if the checksum is bad, it becomes
         * an EGAIN error and the ldns_udp_send function does not block,
         * but returns a 'NETWORK_ERROR' much like a timeout. */
        FUNC1(sockfd);

	answer = FUNC4(sockfd, answer_size, NULL, NULL);
	FUNC0(sockfd);

	if (*answer_size == 0) {
		/* oops */
		return LDNS_STATUS_NETWORK_ERR;
	}

	*result = answer;
	return LDNS_STATUS_OK;
}