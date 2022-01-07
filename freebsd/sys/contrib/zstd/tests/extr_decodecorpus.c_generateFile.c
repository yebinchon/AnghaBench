
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ genType_e ;
struct TYPE_4__ {scalar_t__ srcStart; scalar_t__ src; scalar_t__ dataStart; scalar_t__ data; } ;
typedef TYPE_1__ frame_t ;
typedef int dictInfo ;
typedef scalar_t__ U32 ;
typedef int BYTE ;


 int DISPLAY (char*,unsigned int) ;
 int generateCompressedBlock (scalar_t__,TYPE_1__*,int const) ;
 int generateFrame (scalar_t__,TYPE_1__*,int const) ;
 scalar_t__ gt_frame ;
 int initDictInfo (int ,int ,int *,int ) ;
 int outputBuffer (scalar_t__,int,char const* const) ;

__attribute__((used)) static int generateFile(U32 seed, const char* const path,
                        const char* const origPath, genType_e genType)
{
    frame_t fr;

    DISPLAY("seed: %u\n", (unsigned)seed);

    { dictInfo const info = initDictInfo(0, 0, ((void*)0), 0);
        if (genType == gt_frame) {
            generateFrame(seed, &fr, info);
        } else {
            generateCompressedBlock(seed, &fr, info);
        }
    }
    outputBuffer(fr.dataStart, (BYTE*)fr.data - (BYTE*)fr.dataStart, path);
    if (origPath) {
        outputBuffer(fr.srcStart, (BYTE*)fr.src - (BYTE*)fr.srcStart, origPath);
    }
    return 0;
}
