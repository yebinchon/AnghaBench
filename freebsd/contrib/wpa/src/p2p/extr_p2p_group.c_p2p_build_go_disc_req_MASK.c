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
struct wpabuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  P2P_GO_DISC_REQ ; 
 int /*<<< orphan*/  FUNC0 (struct wpabuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC1 (int) ; 

__attribute__((used)) static struct wpabuf * FUNC2(void)
{
	struct wpabuf *buf;

	buf = FUNC1(100);
	if (buf == NULL)
		return NULL;

	FUNC0(buf, P2P_GO_DISC_REQ, 0);

	return buf;
}