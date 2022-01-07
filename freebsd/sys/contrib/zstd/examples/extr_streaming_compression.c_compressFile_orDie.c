
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void* const member_0; size_t const member_1; int pos; int member_2; } ;
typedef TYPE_1__ ZSTD_outBuffer ;
struct TYPE_6__ {void* const member_0; size_t member_1; scalar_t__ pos; scalar_t__ size; int member_2; } ;
typedef TYPE_2__ ZSTD_inBuffer ;
typedef int ZSTD_EndDirective ;
typedef int ZSTD_CCtx ;
typedef int FILE ;


 int CHECK (int,char*) ;
 int CHECK_ZSTD (size_t const) ;
 size_t const ZSTD_CCtx_setParameter (int * const,int ,int) ;
 size_t ZSTD_CStreamInSize () ;
 size_t ZSTD_CStreamOutSize () ;
 int ZSTD_c_checksumFlag ;
 int ZSTD_c_compressionLevel ;
 size_t ZSTD_compressStream2 (int * const,TYPE_1__*,TYPE_2__*,int const) ;
 int * ZSTD_createCCtx () ;
 int ZSTD_e_continue ;
 int ZSTD_e_end ;
 int ZSTD_freeCCtx (int * const) ;
 int fclose_orDie (int * const) ;
 int * fopen_orDie (char const*,char*) ;
 size_t fread_orDie (void* const,size_t const,int * const) ;
 int free (void* const) ;
 int fwrite_orDie (void* const,int ,int * const) ;
 void* malloc_orDie (size_t const) ;

__attribute__((used)) static void compressFile_orDie(const char* fname, const char* outName, int cLevel)
{

    FILE* const fin = fopen_orDie(fname, "rb");
    FILE* const fout = fopen_orDie(outName, "wb");




    size_t const buffInSize = ZSTD_CStreamInSize();
    void* const buffIn = malloc_orDie(buffInSize);
    size_t const buffOutSize = ZSTD_CStreamOutSize();
    void* const buffOut = malloc_orDie(buffOutSize);


    ZSTD_CCtx* const cctx = ZSTD_createCCtx();
    CHECK(cctx != ((void*)0), "ZSTD_createCCtx() failed!");




    CHECK_ZSTD( ZSTD_CCtx_setParameter(cctx, ZSTD_c_compressionLevel, cLevel) );
    CHECK_ZSTD( ZSTD_CCtx_setParameter(cctx, ZSTD_c_checksumFlag, 1) );




    size_t const toRead = buffInSize;
    for (;;) {
        size_t read = fread_orDie(buffIn, toRead, fin);






        int const lastChunk = (read < toRead);
        ZSTD_EndDirective const mode = lastChunk ? ZSTD_e_end : ZSTD_e_continue;




        ZSTD_inBuffer input = { buffIn, read, 0 };
        int finished;
        do {



            ZSTD_outBuffer output = { buffOut, buffOutSize, 0 };
            size_t const remaining = ZSTD_compressStream2(cctx, &output , &input, mode);
            CHECK_ZSTD(remaining);
            fwrite_orDie(buffOut, output.pos, fout);




            finished = lastChunk ? (remaining == 0) : (input.pos == input.size);
        } while (!finished);
        CHECK(input.pos == input.size,
              "Impossible: zstd only returns 0 when the input is completely consumed!");

        if (lastChunk) {
            break;
        }
    }

    ZSTD_freeCCtx(cctx);
    fclose_orDie(fout);
    fclose_orDie(fin);
    free(buffIn);
    free(buffOut);
}
