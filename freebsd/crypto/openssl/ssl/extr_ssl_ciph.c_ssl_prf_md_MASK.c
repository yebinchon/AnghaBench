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
typedef  int /*<<< orphan*/  SSL ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int TLS1_PRF_DGST_SHIFT ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const* FUNC1 (int) ; 

const EVP_MD *FUNC2(SSL *s)
{
    return FUNC1(FUNC0(s) >> TLS1_PRF_DGST_SHIFT);
}