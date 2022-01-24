#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct TYPE_12__ {int /*<<< orphan*/ * v; } ;
typedef  TYPE_2__ block ;
struct TYPE_13__ {int lane_length; int lanes; TYPE_1__* region; } ;
typedef  TYPE_3__ argon2_instance_t ;
struct TYPE_14__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  outlen; int /*<<< orphan*/  out; } ;
typedef  TYPE_4__ argon2_context ;
struct TYPE_11__ {int memory; } ;

/* Variables and functions */
 int ARGON2_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 

void
FUNC6(const argon2_context *context, argon2_instance_t *instance)
{
    if (context != NULL && instance != NULL) {
        block    blockhash;
        uint32_t l;

        FUNC1(&blockhash,
                   instance->region->memory + instance->lane_length - 1);

        /* XOR the last blocks */
        for (l = 1; l < instance->lanes; ++l) {
            uint32_t last_block_in_lane =
                l * instance->lane_length + (instance->lane_length - 1);
            FUNC5(&blockhash,
                      instance->region->memory + last_block_in_lane);
        }

        /* Hash the result */
        {
            uint8_t blockhash_bytes[ARGON2_BLOCK_SIZE];
            FUNC4(blockhash_bytes, &blockhash);
            FUNC0(context->out, context->outlen, blockhash_bytes,
                         ARGON2_BLOCK_SIZE);
            FUNC3(blockhash.v,
                           ARGON2_BLOCK_SIZE); /* clear blockhash */
            FUNC3(blockhash_bytes,
                           ARGON2_BLOCK_SIZE); /* clear blockhash_bytes */
        }

        FUNC2(instance, context->flags);
    }
}