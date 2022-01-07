
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ contentSize; } ;
struct TYPE_6__ {int* data; int* src; int oldStats; int stats; TYPE_1__ header; } ;
typedef TYPE_2__ frame_t ;
typedef int dictInfo ;
typedef int U32 ;
typedef int U16 ;
typedef int BYTE ;


 unsigned int* BLOCK_TYPES ;
 int DISPLAYLEVEL (int,char*,...) ;
 int MEM_writeLE16 (int* const,int ) ;
 int RAND (int *) ;
 int RAND_buffer (int *,int*,size_t) ;
 int memcpy (int*,int*,size_t) ;
 int memset (int*,int const,size_t) ;
 size_t writeCompressedBlock (int *,TYPE_2__*,size_t,int ) ;

__attribute__((used)) static void writeBlock(U32* seed, frame_t* frame, size_t contentSize,
                       int lastBlock, dictInfo info)
{
    int const blockTypeDesc = RAND(seed) % 8;
    size_t blockSize;
    int blockType;

    BYTE *const header = (BYTE*)frame->data;
    BYTE *op = header + 3;

    DISPLAYLEVEL(4, " block:\n");
    DISPLAYLEVEL(4, "  block content size: %u\n", (unsigned)contentSize);
    DISPLAYLEVEL(4, "  last block: %s\n", lastBlock ? "yes" : "no");

    if (blockTypeDesc == 0) {


        RAND_buffer(seed, frame->src, contentSize);
        memcpy(op, frame->src, contentSize);

        op += contentSize;
        blockType = 0;
        blockSize = contentSize;
    } else if (blockTypeDesc == 1 && frame->header.contentSize > 0) {

        BYTE const symbol = RAND(seed) & 0xff;

        op[0] = symbol;
        memset(frame->src, symbol, contentSize);

        op++;
        blockType = 1;
        blockSize = contentSize;
    } else {

        size_t compressedSize;
        blockType = 2;

        frame->oldStats = frame->stats;

        frame->data = op;
        compressedSize = writeCompressedBlock(seed, frame, contentSize, info);
        if (compressedSize >= contentSize) {
            blockType = 0;
            memcpy(op, frame->src, contentSize);

            op += contentSize;
            blockSize = contentSize;


            frame->stats = frame->oldStats;
        } else {
            op += compressedSize;
            blockSize = compressedSize;
        }
    }
    frame->src = (BYTE*)frame->src + contentSize;

    DISPLAYLEVEL(4, "  block type: %s\n", BLOCK_TYPES[blockType]);
    DISPLAYLEVEL(4, "  block size field: %u\n", (unsigned)blockSize);

    header[0] = (BYTE) ((lastBlock | (blockType << 1) | (blockSize << 3)) & 0xff);
    MEM_writeLE16(header + 1, (U16) (blockSize >> 5));

    frame->data = op;
}
