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
 int OPENSSL_ppccap_P ; 
 int PPC_CRYPTO207 ; 
 int /*<<< orphan*/  FUNC0 (void*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (void*,void const*,size_t) ; 

void FUNC2(void *ctx, const void *inp, size_t len)
{
    OPENSSL_ppccap_P & PPC_CRYPTO207 ? FUNC0(ctx, inp, len) :
        FUNC1(ctx, inp, len);
}