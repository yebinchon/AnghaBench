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
typedef  TYPE_1__* uhash_ctx_t ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  UINT64 ;
typedef  int /*<<< orphan*/  UINT32 ;
struct TYPE_3__ {scalar_t__* poly_accum; int* ip_trans; scalar_t__ ip_keys; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int STREAMS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ p64 ; 

__attribute__((used)) static void FUNC3(uhash_ctx_t ahc, u_char *res)
{
    int i;
    UINT64 t;

    for (i = 0; i < STREAMS; i++) {
        /* fix polyhash output not in Z_p64 */
        if (ahc->poly_accum[i] >= p64)
            ahc->poly_accum[i] -= p64;
        t  = FUNC1(0,ahc->ip_keys+(i*4), ahc->poly_accum[i]);
        FUNC0((UINT32 *)res+i,
                         FUNC2(t) ^ ahc->ip_trans[i]);
    }
}