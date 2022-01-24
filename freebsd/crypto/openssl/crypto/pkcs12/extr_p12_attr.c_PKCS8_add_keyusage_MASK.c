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
typedef  int /*<<< orphan*/  PKCS8_PRIV_KEY_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  NID_key_usage ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  V_ASN1_BIT_STRING ; 

int FUNC1(PKCS8_PRIV_KEY_INFO *p8, int usage)
{
    unsigned char us_val = (unsigned char)usage;
    return FUNC0(p8, NID_key_usage,
                                       V_ASN1_BIT_STRING, &us_val, 1);
}