
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ argon2_type ;
struct TYPE_10__ {int passes; unsigned int current_pass; int memory_blocks; int segment_length; int lane_length; int lanes; scalar_t__ type; int threads; int * region; } ;
typedef TYPE_1__ argon2_instance_t ;
struct TYPE_11__ {int m_cost; int lanes; int t_cost; int threads; } ;
typedef TYPE_2__ argon2_context ;


 int ARGON2_INCORRECT_TYPE ;
 int ARGON2_OK ;
 int ARGON2_SYNC_POINTS ;
 scalar_t__ Argon2_i ;
 scalar_t__ Argon2_id ;
 int fill_memory_blocks (TYPE_1__*,int) ;
 int finalize (TYPE_2__*,TYPE_1__*) ;
 int initialize (TYPE_1__*,TYPE_2__*) ;
 int validate_inputs (TYPE_2__*) ;

int
argon2_ctx(argon2_context *context, argon2_type type)
{

    int result = validate_inputs(context);
    uint32_t memory_blocks, segment_length;
    uint32_t pass;
    argon2_instance_t instance;

    if (ARGON2_OK != result) {
        return result;
    }

    if (type != Argon2_id && type != Argon2_i) {
        return ARGON2_INCORRECT_TYPE;
    }



    memory_blocks = context->m_cost;

    if (memory_blocks < 2 * ARGON2_SYNC_POINTS * context->lanes) {
        memory_blocks = 2 * ARGON2_SYNC_POINTS * context->lanes;
    }

    segment_length = memory_blocks / (context->lanes * ARGON2_SYNC_POINTS);

    memory_blocks = segment_length * (context->lanes * ARGON2_SYNC_POINTS);

    instance.region = ((void*)0);
    instance.passes = context->t_cost;
    instance.current_pass = ~ 0U;
    instance.memory_blocks = memory_blocks;
    instance.segment_length = segment_length;
    instance.lane_length = segment_length * ARGON2_SYNC_POINTS;
    instance.lanes = context->lanes;
    instance.threads = context->threads;
    instance.type = type;




    result = initialize(&instance, context);

    if (ARGON2_OK != result) {
        return result;
    }


    for (pass = 0; pass < instance.passes; pass++) {
        fill_memory_blocks(&instance, pass);
    }


    finalize(context, &instance);

    return ARGON2_OK;
}
