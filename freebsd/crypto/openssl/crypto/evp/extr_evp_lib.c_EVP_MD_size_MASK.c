#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int md_size; } ;
typedef  TYPE_1__ EVP_MD ;

/* Variables and functions */
 int /*<<< orphan*/  EVP_F_EVP_MD_SIZE ; 
 int /*<<< orphan*/  EVP_R_MESSAGE_DIGEST_IS_NULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC1(const EVP_MD *md)
{
    if (!md) {
        FUNC0(EVP_F_EVP_MD_SIZE, EVP_R_MESSAGE_DIGEST_IS_NULL);
        return -1;
    }
    return md->md_size;
}