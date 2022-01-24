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
struct msg_hdr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_WRITE ; 
 int /*<<< orphan*/  SHUT_RDWR ; 
 size_t bytes ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 () ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  end ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  file_addr ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int,struct msg_hdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 size_t FUNC9 (int,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  start ; 

__attribute__((used)) static int FUNC12(void)
{
	struct msg_hdr ack;
	int ret, rs;
	size_t len;

	rs = FUNC1();
	if (rs < 0)
		return rs;

	ret = FUNC2(rs);
	if (ret)
		goto shutdown;

	ret = FUNC3(rs);
	if (ret)
		goto close;

	FUNC7("...");
	FUNC4(NULL);
	FUNC5(&start, NULL);
	len = FUNC9(rs, file_addr, bytes, 0);
	if (len == bytes)
		ret = FUNC6(rs, &ack, CMD_WRITE);
	else
		ret = (int) len;

	FUNC5(&end, NULL);

close:
	FUNC0(rs);
shutdown:
	FUNC10(rs, SHUT_RDWR);
	FUNC8(rs);
	if (!ret)
		FUNC11();
	return ret;
}