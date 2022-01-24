#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void const*,size_t) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(EVP_MD_CTX *ctx, const void *data, size_t count)
{
    if (!FUNC0(FUNC1(ctx)->data, data, count))
        return 0;
    return 1;
}