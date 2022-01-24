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
typedef  int /*<<< orphan*/  sldns_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  PACKAGE_VERSION ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static int
FUNC5(sldns_buffer* buf, char* host, char* path)
{
	FUNC1(buf);
	FUNC4(buf, "GET /%s HTTP/1.1\r\n", path);
	FUNC4(buf, "Host: %s\r\n", host);
	FUNC4(buf, "User-Agent: unbound/%s\r\n",
		PACKAGE_VERSION);
	/* We do not really do multiple queries per connection,
	 * but this header setting is also not needed.
	 * sldns_buffer_printf(buf, "Connection: close\r\n") */
	FUNC4(buf, "\r\n");
	if(FUNC3(buf)+10 > FUNC0(buf))
		return 0; /* somehow buffer too short, but it is about 60K
		and the request is only a couple bytes long. */
	FUNC2(buf);
	return 1;
}