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
typedef  int /*<<< orphan*/  u32 ;
struct wpabuf {int dummy; } ;

/* Variables and functions */
 struct wpabuf* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t,struct wpabuf*) ; 

__attribute__((used)) static struct wpabuf * FUNC2(u32 stypes, const u8 *payload,
					   size_t payload_len)
{
	struct wpabuf *buf;

	buf = FUNC0(0, 100 + payload_len);
	if (buf == NULL)
		return NULL;

	FUNC1(stypes, payload, payload_len, buf);

	return buf;
}