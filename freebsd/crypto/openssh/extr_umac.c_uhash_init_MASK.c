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
typedef  TYPE_1__* uhash_ctx_t ;
typedef  int /*<<< orphan*/  uhash_ctx ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  aes_int_key ;
typedef  int UINT8 ;
typedef  int UINT64 ;
typedef  int /*<<< orphan*/  UINT32 ;
struct TYPE_4__ {int* poly_key_8; int* poly_accum; int* ip_keys; int* ip_trans; int /*<<< orphan*/  hash; } ;

/* Variables and functions */
 int STREAMS ; 
 int /*<<< orphan*/  FUNC0 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int p36 ; 

__attribute__((used)) static void FUNC6(uhash_ctx_t ahc, aes_int_key prf_key)
{
    int i;
    UINT8 buf[(8*STREAMS+4)*sizeof(UINT64)];

    /* Zero the entire uhash context */
    FUNC4(ahc, 0, sizeof(uhash_ctx));

    /* Initialize the L1 hash */
    FUNC5(&ahc->hash, prf_key);

    /* Setup L2 hash variables */
    FUNC2(buf, prf_key, 2, sizeof(buf));    /* Fill buffer with index 1 key */
    for (i = 0; i < STREAMS; i++) {
        /* Fill keys from the buffer, skipping bytes in the buffer not
         * used by this implementation. Endian reverse the keys if on a
         * little-endian computer.
         */
        FUNC3(ahc->poly_key_8+i, buf+24*i, 8);
        FUNC0(ahc->poly_key_8+i, 8, 8);
        /* Mask the 64-bit keys to their special domain */
        ahc->poly_key_8[i] &= ((UINT64)0x01ffffffu << 32) + 0x01ffffffu;
        ahc->poly_accum[i] = 1;  /* Our polyhash prepends a non-zero word */
    }

    /* Setup L3-1 hash variables */
    FUNC2(buf, prf_key, 3, sizeof(buf)); /* Fill buffer with index 2 key */
    for (i = 0; i < STREAMS; i++)
          FUNC3(ahc->ip_keys+4*i, buf+(8*i+4)*sizeof(UINT64),
                                                 4*sizeof(UINT64));
    FUNC0(ahc->ip_keys, sizeof(UINT64),
                                                  sizeof(ahc->ip_keys));
    for (i = 0; i < STREAMS*4; i++)
        ahc->ip_keys[i] %= p36;  /* Bring into Z_p36 */

    /* Setup L3-2 hash variables    */
    /* Fill buffer with index 4 key */
    FUNC2(ahc->ip_trans, prf_key, 4, STREAMS * sizeof(UINT32));
    FUNC0(ahc->ip_trans, sizeof(UINT32),
                         STREAMS * sizeof(UINT32));
    FUNC1(buf, sizeof(buf));
}