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

/* Variables and functions */
 int FUNC0 (void*,int /*<<< orphan*/  const*,int,int) ; 

__attribute__((used)) static int FUNC1(void *wpa_s, const u8 *addr,
					     int protection_type,
					     int key_type)
{
	return FUNC0(wpa_s, addr, protection_type,
					  key_type);
}