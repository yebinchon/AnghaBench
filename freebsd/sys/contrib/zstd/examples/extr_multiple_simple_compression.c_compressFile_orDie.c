
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cBuffer; int fBuffer; int cBufferSize; int cctx; int fBufferSize; } ;
typedef TYPE_1__ resources ;


 int CHECK_ZSTD (size_t const) ;
 size_t ZSTD_compressCCtx (int ,int ,int ,int ,size_t,int) ;
 size_t loadFile_orDie (char const*,int ,int ) ;
 int printf (char*,char const*,unsigned int,unsigned int,char const*) ;
 int saveFile_orDie (char const*,int ,size_t const) ;

__attribute__((used)) static void compressFile_orDie(resources ress, const char* fname, const char* oname)
{
    size_t fSize = loadFile_orDie(fname, ress.fBuffer, ress.fBufferSize);





    size_t const cSize = ZSTD_compressCCtx(ress.cctx, ress.cBuffer, ress.cBufferSize, ress.fBuffer, fSize, 1);
    CHECK_ZSTD(cSize);

    saveFile_orDie(oname, ress.cBuffer, cSize);


    printf("%25s : %6u -> %7u - %s \n", fname, (unsigned)fSize, (unsigned)cSize, oname);
}
