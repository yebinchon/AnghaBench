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
typedef  int /*<<< orphan*/  ZSTD_dictContentType_e ;
struct TYPE_4__ {int /*<<< orphan*/  dictUses; } ;
typedef  TYPE_1__ ZSTD_DCtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,void const*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZSTD_dlm_byRef ; 
 int /*<<< orphan*/  ZSTD_use_once ; 

size_t FUNC2(ZSTD_DCtx* dctx, const void* prefix, size_t prefixSize, ZSTD_dictContentType_e dictContentType)
{
    FUNC0(FUNC1(dctx, prefix, prefixSize, ZSTD_dlm_byRef, dictContentType));
    dctx->dictUses = ZSTD_use_once;
    return 0;
}