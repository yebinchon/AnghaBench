
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int * v; } ;
typedef TYPE_1__ const block ;


 int BLAKE2_ROUND_NOMSG (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int copy_block (TYPE_1__ const*,TYPE_1__ const*) ;
 int xor_block (TYPE_1__ const*,TYPE_1__ const*) ;

__attribute__((used)) static void
fill_block(const block *prev_block, const block *ref_block, block *next_block)
{
    block blockR, block_tmp;
    unsigned i;

    copy_block(&blockR, ref_block);
    xor_block(&blockR, prev_block);
    copy_block(&block_tmp, &blockR);



    for (i = 0; i < 8; ++i) {
        BLAKE2_ROUND_NOMSG(
            blockR.v[16 * i], blockR.v[16 * i + 1], blockR.v[16 * i + 2],
            blockR.v[16 * i + 3], blockR.v[16 * i + 4], blockR.v[16 * i + 5],
            blockR.v[16 * i + 6], blockR.v[16 * i + 7], blockR.v[16 * i + 8],
            blockR.v[16 * i + 9], blockR.v[16 * i + 10], blockR.v[16 * i + 11],
            blockR.v[16 * i + 12], blockR.v[16 * i + 13], blockR.v[16 * i + 14],
            blockR.v[16 * i + 15]);
    }



    for (i = 0; i < 8; i++) {
        BLAKE2_ROUND_NOMSG(
            blockR.v[2 * i], blockR.v[2 * i + 1], blockR.v[2 * i + 16],
            blockR.v[2 * i + 17], blockR.v[2 * i + 32], blockR.v[2 * i + 33],
            blockR.v[2 * i + 48], blockR.v[2 * i + 49], blockR.v[2 * i + 64],
            blockR.v[2 * i + 65], blockR.v[2 * i + 80], blockR.v[2 * i + 81],
            blockR.v[2 * i + 96], blockR.v[2 * i + 97], blockR.v[2 * i + 112],
            blockR.v[2 * i + 113]);
    }

    copy_block(next_block, &block_tmp);
    xor_block(next_block, &blockR);
}
