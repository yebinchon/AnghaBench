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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * _hidden_aes_128_cbc ; 
 int /*<<< orphan*/ * _hidden_aes_128_cbc_hmac_sha1 ; 

__attribute__((used)) static void FUNC1(void)
{
    FUNC0(_hidden_aes_128_cbc);
    FUNC0(_hidden_aes_128_cbc_hmac_sha1);
    _hidden_aes_128_cbc = NULL;
    _hidden_aes_128_cbc_hmac_sha1 = NULL;
}