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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct tlsv1_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC3(struct tlsv1_client *conn,
					       const u8 *pos, size_t len)
{
	const u8 *end = pos + len;

	FUNC1(MSG_MSGDUMP, "TLSv1: ServerHello extensions",
		    pos, len);
	while (pos < end) {
		u16 ext, elen;

		if (end - pos < 4) {
			FUNC2(MSG_INFO, "TLSv1: Truncated ServerHello extension header");
			return -1;
		}

		ext = FUNC0(pos);
		pos += 2;
		elen = FUNC0(pos);
		pos += 2;

		if (elen > end - pos) {
			FUNC2(MSG_INFO, "TLSv1: Truncated ServerHello extension");
			return -1;
		}

		FUNC2(MSG_DEBUG, "TLSv1: ServerHello ExtensionType %u",
			   ext);
		FUNC1(MSG_DEBUG, "TLSv1: ServerHello extension data",
			    pos, elen);

		pos += elen;
	}

	return 0;
}