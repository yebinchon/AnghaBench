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
struct wpabuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wpabuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,int) ; 

struct wpabuf * FUNC3(u8 dialog_token, size_t size)
{
	struct wpabuf *buf;

	buf = FUNC1(dialog_token, 4 + size);
	if (buf == NULL)
		return NULL;

	FUNC0(buf, 0, 0);

	FUNC2(buf, 2); /* Query Request Length to be filled */

	return buf;
}