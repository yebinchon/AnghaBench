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
struct x509_name {int /*<<< orphan*/  rid; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static int FUNC3(struct x509_name *name,
				   const u8 *pos, size_t len)
{
	char buf[80];

	/* registeredID OBJECT IDENTIFIER */
	if (FUNC1(pos, len, &name->rid) < 0)
		return -1;

	FUNC0(&name->rid, buf, sizeof(buf));
	FUNC2(MSG_MSGDUMP, "X509: altName - registeredID: %s", buf);

	return 0;
}