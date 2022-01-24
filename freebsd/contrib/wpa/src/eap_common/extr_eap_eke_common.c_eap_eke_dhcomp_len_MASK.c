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
typedef  scalar_t__ u8 ;

/* Variables and functions */
 int AES_BLOCK_SIZE ; 
 scalar_t__ EAP_EKE_ENCR_AES128_CBC ; 
 int FUNC0 (scalar_t__) ; 

__attribute__((used)) static int FUNC1(u8 dhgroup, u8 encr)
{
	int dhlen;

	dhlen = FUNC0(dhgroup);
	if (dhlen < 0 || encr != EAP_EKE_ENCR_AES128_CBC)
		return -1;
	return AES_BLOCK_SIZE + dhlen;
}