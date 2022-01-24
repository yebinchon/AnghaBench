#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int (* update ) (TYPE_1__*,void const*,size_t) ;} ;
typedef  TYPE_1__ EVP_MD_CTX ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,void const*,size_t) ; 

int FUNC1(EVP_MD_CTX *ctx, const void *data, size_t count)
{
    if (count == 0)
        return 1;

    return ctx->update(ctx, data, count);
}