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
typedef  size_t ssize_t ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*,char*) ; 
 char* FUNC2 (size_t,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 size_t FUNC7 (int,char*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(const char *dest_filename, int server_sock, size_t len)
{
	char *buffer, *buf_window_ptr;
	int recv_sock;
	size_t buffer_size;
	ssize_t received_bytes, recv_ret;

	/*
	 * Ensure that there isn't excess data sent across the wire by
	 * capturing 10 extra bytes (plus 1 for nul).
	 */
	buffer_size = len + 10 + 1;
	buffer = FUNC2(buffer_size, sizeof(char));
	if (buffer == NULL)
		FUNC4(1, "malloc failed");

	recv_sock = FUNC0(server_sock, NULL, 0);
	if (recv_sock == -1)
		FUNC4(1, "accept failed");

	buf_window_ptr = buffer;
	received_bytes = 0;
	do {
		recv_ret = FUNC7(recv_sock, buf_window_ptr,
		    buffer_size - received_bytes, 0);
		if (recv_ret <= 0)
			break;
		buf_window_ptr += recv_ret;
		received_bytes += recv_ret;
	} while (received_bytes < buffer_size);

	FUNC1(dest_filename, "%s", buffer);

	(void)FUNC3(recv_sock);
	(void)FUNC3(server_sock);
	FUNC6(buffer);

	if (received_bytes != len)
		FUNC5(1, "received unexpected data: %zd != %zd", received_bytes,
		    len);
}