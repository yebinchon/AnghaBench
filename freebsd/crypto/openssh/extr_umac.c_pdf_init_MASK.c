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
struct TYPE_3__ {int /*<<< orphan*/  prf_key; int /*<<< orphan*/  cache; int /*<<< orphan*/  nonce; } ;
typedef  TYPE_1__ pdf_ctx ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  aes_int_key ;
typedef  int /*<<< orphan*/  UINT8 ;

/* Variables and functions */
 int UMAC_KEY_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(pdf_ctx *pc, aes_int_key prf_key)
{
    UINT8 buf[UMAC_KEY_LEN];

    FUNC3(buf, prf_key, 0, UMAC_KEY_LEN);
    FUNC1(buf, pc->prf_key);

    /* Initialize pdf and cache */
    FUNC4(pc->nonce, 0, sizeof(pc->nonce));
    FUNC0(pc->nonce, pc->cache, pc->prf_key);
    FUNC2(buf, sizeof(buf));
}