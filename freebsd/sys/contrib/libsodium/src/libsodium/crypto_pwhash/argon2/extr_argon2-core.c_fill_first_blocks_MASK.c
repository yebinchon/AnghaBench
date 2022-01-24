#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct TYPE_5__ {int lanes; int lane_length; TYPE_1__* region; } ;
typedef  TYPE_2__ argon2_instance_t ;
struct TYPE_4__ {int /*<<< orphan*/ * memory; } ;

/* Variables and functions */
 int ARGON2_BLOCK_SIZE ; 
 int ARGON2_PREHASH_DIGEST_LENGTH ; 
 int /*<<< orphan*/  ARGON2_PREHASH_SEED_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

void
FUNC4(uint8_t *blockhash, const argon2_instance_t *instance)
{
    uint32_t l;
    /* Make the first and second block in each lane as G(H0||i||0) or
       G(H0||i||1) */
    uint8_t blockhash_bytes[ARGON2_BLOCK_SIZE];
    for (l = 0; l < instance->lanes; ++l) {
        FUNC0(blockhash + ARGON2_PREHASH_DIGEST_LENGTH, 0);
        FUNC0(blockhash + ARGON2_PREHASH_DIGEST_LENGTH + 4, l);
        FUNC1(blockhash_bytes, ARGON2_BLOCK_SIZE, blockhash,
                     ARGON2_PREHASH_SEED_LENGTH);
        FUNC2(&instance->region->memory[l * instance->lane_length + 0],
                   blockhash_bytes);

        FUNC0(blockhash + ARGON2_PREHASH_DIGEST_LENGTH, 1);
        FUNC1(blockhash_bytes, ARGON2_BLOCK_SIZE, blockhash,
                     ARGON2_PREHASH_SEED_LENGTH);
        FUNC2(&instance->region->memory[l * instance->lane_length + 1],
                   blockhash_bytes);
    }
    FUNC3(blockhash_bytes, ARGON2_BLOCK_SIZE);
}