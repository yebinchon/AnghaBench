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
struct wpa_supplicant {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct wpa_supplicant*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct wpa_supplicant *wpa_s, char *cmd)
{
	u8 tsid = FUNC0(cmd);

	return FUNC1(wpa_s, tsid);
}