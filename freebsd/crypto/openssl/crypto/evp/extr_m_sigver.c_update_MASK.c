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
typedef  int /*<<< orphan*/  EVP_MD_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  EVP_F_UPDATE ; 
 int /*<<< orphan*/  EVP_R_ONLY_ONESHOT_SUPPORTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(EVP_MD_CTX *ctx, const void *data, size_t datalen)
{
    FUNC0(EVP_F_UPDATE, EVP_R_ONLY_ONESHOT_SUPPORTED);
    return 0;
}