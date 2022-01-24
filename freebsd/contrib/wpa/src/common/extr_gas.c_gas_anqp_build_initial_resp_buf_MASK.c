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
typedef  int /*<<< orphan*/  u16 ;
struct wpabuf {int dummy; } ;

/* Variables and functions */
 struct wpabuf* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*,struct wpabuf*) ; 

struct wpabuf * FUNC4(u8 dialog_token,
						u16 status_code,
						u16 comeback_delay,
						struct wpabuf *payload)
{
	struct wpabuf *buf;

	buf = FUNC0(dialog_token, status_code,
					  comeback_delay,
					  payload ? FUNC2(payload) : 0);
	if (buf == NULL)
		return NULL;

	if (payload)
		FUNC3(buf, payload);

	FUNC1(buf);

	return buf;
}