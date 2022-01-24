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
struct wpa_supplicant {int dummy; } ;

/* Variables and functions */
 struct wpabuf* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpa_supplicant*,struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct wpa_supplicant*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct wpa_supplicant*) ; 

__attribute__((used)) static void FUNC7(struct wpa_supplicant *wpa_s)
{
	struct wpabuf *buf;

	buf = FUNC0(512);
	if (!buf)
		return;

	FUNC4(wpa_s, buf, 1);
	FUNC5(wpa_s, FUNC2(buf),
				       FUNC3(buf));
	FUNC6(wpa_s);
	FUNC1(buf);
}