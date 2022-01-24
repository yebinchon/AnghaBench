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
typedef  int u8 ;
struct wpabuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,int const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*,int) ; 

void FUNC4(struct wpabuf *buf, u8 type, const u8 *data,
		       size_t len)
{
	FUNC3(buf, type);
	FUNC3(buf, 2 + len); /* Length; including attr header */
	if (data)
		FUNC2(buf, data, len);
	else
		FUNC0(FUNC1(buf, len), 0, len);
}