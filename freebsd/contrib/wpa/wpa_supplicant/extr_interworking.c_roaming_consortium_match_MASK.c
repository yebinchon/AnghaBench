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
 scalar_t__ FUNC0 (struct wpabuf const*,int /*<<< orphan*/  const*,size_t) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t) ; 

__attribute__((used)) static int FUNC2(const u8 *ie, const struct wpabuf *anqp,
				    const u8 *rc_id, size_t rc_len)
{
	return FUNC1(ie, rc_id, rc_len) ||
		FUNC0(anqp, rc_id, rc_len);
}