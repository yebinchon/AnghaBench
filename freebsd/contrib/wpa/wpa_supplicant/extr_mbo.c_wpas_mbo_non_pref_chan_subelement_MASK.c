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
struct wpa_supplicant {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_supplicant*,struct wpabuf*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,size_t) ; 

__attribute__((used)) static void FUNC3(struct wpa_supplicant *wpa_s,
					      struct wpabuf *mbo, u8 start,
					      u8 end)
{
	size_t size = end - start + 7;

	if (size + 2 > FUNC0(mbo))
		return;

	FUNC2(mbo, size);
	FUNC1(wpa_s, mbo, start, end);
}