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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_4__ {int /*<<< orphan*/ * h; } ;
typedef  int /*<<< orphan*/  BLAKE2S_PARAM ;
typedef  TYPE_1__ BLAKE2S_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void FUNC3(BLAKE2S_CTX *S, const BLAKE2S_PARAM *P)
{
    const uint8_t *p = (const uint8_t *)(P);
    size_t i;

    /* The param struct is carefully hand packed, and should be 32 bytes on
     * every platform. */
    FUNC0(sizeof(BLAKE2S_PARAM) == 32);
    FUNC1(S);
    /* IV XOR ParamBlock */
    for (i = 0; i < 8; ++i) {
        S->h[i] ^= FUNC2(&p[i*4]);
    }
}