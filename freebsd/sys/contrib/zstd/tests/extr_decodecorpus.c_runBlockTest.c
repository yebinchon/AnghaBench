
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int frame_t ;
typedef int dictInfo ;
typedef scalar_t__ U32 ;


 int DISPLAY (char*,unsigned int,int ) ;
 int ZSTD_getErrorName (size_t const) ;
 scalar_t__ ZSTD_isError (size_t const) ;
 scalar_t__ generateCompressedBlock (scalar_t__,int *,int const) ;
 int gt_block ;
 int initDictInfo (int ,int ,int *,int ) ;
 size_t testDecodeRawBlock (int *) ;
 size_t testDecodeWithDict (scalar_t__,int ) ;

__attribute__((used)) static int runBlockTest(U32* seed)
{
    frame_t fr;
    U32 const seedCopy = *seed;
    { dictInfo const info = initDictInfo(0, 0, ((void*)0), 0);
        *seed = generateCompressedBlock(*seed, &fr, info);
    }

    { size_t const r = testDecodeRawBlock(&fr);
        if (ZSTD_isError(r)) {
            DISPLAY("Error in block mode on test seed %u: %s\n",
                    (unsigned)seedCopy, ZSTD_getErrorName(r));
            return 1;
        }
    }

    { size_t const r = testDecodeWithDict(*seed, gt_block);
        if (ZSTD_isError(r)) {
            DISPLAY("Error in block mode with dictionary on test seed %u: %s\n",
                    (unsigned)seedCopy, ZSTD_getErrorName(r));
            return 1;
        }
    }
    return 0;
}
