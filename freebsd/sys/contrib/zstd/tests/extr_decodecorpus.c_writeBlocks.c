
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t contentSize; size_t windowSize; } ;
struct TYPE_6__ {TYPE_1__ header; } ;
typedef TYPE_2__ frame_t ;
typedef int dictInfo ;
typedef int U32 ;


 int MIN (size_t const,size_t) ;
 int RAND (int *) ;
 size_t const g_maxBlockSize ;
 int writeBlock (int *,TYPE_2__*,size_t,int const,int ) ;

__attribute__((used)) static void writeBlocks(U32* seed, frame_t* frame, dictInfo info)
{
    size_t contentLeft = frame->header.contentSize;
    size_t const maxBlockSize = MIN(g_maxBlockSize, frame->header.windowSize);
    while (1) {

        int const lastBlock = contentLeft > maxBlockSize ? 0 : !(RAND(seed) & 3);
        size_t blockContentSize;
        if (lastBlock) {
            blockContentSize = contentLeft;
        } else {
            if (contentLeft > 0 && (RAND(seed) & 7)) {

                blockContentSize = RAND(seed) % (MIN(maxBlockSize, contentLeft)+1);
            } else if (contentLeft > maxBlockSize && (RAND(seed) & 1)) {

                blockContentSize = maxBlockSize;
            } else {

                blockContentSize = 0;
            }
        }

        writeBlock(seed, frame, blockContentSize, lastBlock, info);

        contentLeft -= blockContentSize;
        if (lastBlock) break;
    }
}
