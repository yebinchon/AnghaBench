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
typedef  int UWORD ;
typedef  int UINT32 ;

/* Variables and functions */
 int FUNC0 (int*) ; 

__attribute__((used)) static void FUNC1(void *buf, UWORD bpw, UINT32 num_bytes)
/* We endian convert the keys on little-endian computers to               */
/* compensate for the lack of big-endian memory reads during hashing.     */
{
    UWORD iters = num_bytes / bpw;
    if (bpw == 4) {
        UINT32 *p = (UINT32 *)buf;
        do {
            *p = FUNC0(p);
            p++;
        } while (--iters);
    } else if (bpw == 8) {
        UINT32 *p = (UINT32 *)buf;
        UINT32 t;
        do {
            t = FUNC0(p+1);
            p[1] = FUNC0(p);
            p[0] = t;
            p += 2;
        } while (--iters);
    }
}