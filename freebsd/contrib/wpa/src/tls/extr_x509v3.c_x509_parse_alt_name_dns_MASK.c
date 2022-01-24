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
struct x509_name {int /*<<< orphan*/ * dns; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 size_t FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct x509_name *name,
				   const u8 *pos, size_t len)
{
	/* dNSName IA5String */
	FUNC4(MSG_MSGDUMP, "X509: altName - dNSName", pos, len);
	FUNC0(name->dns);
	name->dns = FUNC3(len + 1);
	if (name->dns == NULL)
		return -1;
	FUNC1(name->dns, pos, len);
	if (FUNC2(name->dns) != len) {
		FUNC5(MSG_INFO, "X509: Reject certificate with "
			   "embedded NUL byte in dNSName (%s[NUL])",
			   name->dns);
		FUNC0(name->dns);
		name->dns = NULL;
		return -1;
	}
	return 0;
}