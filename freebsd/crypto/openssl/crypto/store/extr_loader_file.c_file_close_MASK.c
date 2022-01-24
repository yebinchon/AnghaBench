#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  file; } ;
struct TYPE_7__ {int /*<<< orphan*/  ctx; } ;
struct TYPE_9__ {TYPE_2__ file; TYPE_1__ dir; } ;
struct TYPE_10__ {scalar_t__ type; TYPE_3__ _; } ;
typedef  TYPE_4__ OSSL_STORE_LOADER_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 scalar_t__ is_dir ; 

__attribute__((used)) static int FUNC3(OSSL_STORE_LOADER_CTX *ctx)
{
    if (ctx->type == is_dir) {
        FUNC1(&ctx->_.dir.ctx);
    } else {
        FUNC0(ctx->_.file.file);
    }
    FUNC2(ctx);
    return 1;
}