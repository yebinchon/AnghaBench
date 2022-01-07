
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t fBufferSize; size_t cBufferSize; int * cctx; void* cBuffer; void* fBuffer; } ;
typedef TYPE_1__ resources ;


 int CHECK (int ,char*) ;
 size_t ZSTD_compressBound (size_t) ;
 int * ZSTD_createCCtx () ;
 size_t fsize_orDie (char const* const) ;
 void* malloc_orDie (size_t) ;
 size_t strlen (char const* const) ;

__attribute__((used)) static resources createResources_orDie(int argc, const char** argv, char **ofn, size_t* ofnBufferLen)
{
    size_t maxFilenameLength=0;
    size_t maxFileSize = 0;

    int argNb;
    for (argNb = 1; argNb < argc; argNb++) {
      const char* const filename = argv[argNb];
      size_t const filenameLength = strlen(filename);
      size_t const fileSize = fsize_orDie(filename);

      if (filenameLength > maxFilenameLength) maxFilenameLength = filenameLength;
      if (fileSize > maxFileSize) maxFileSize = fileSize;
    }

    resources ress;
    ress.fBufferSize = maxFileSize;
    ress.cBufferSize = ZSTD_compressBound(maxFileSize);

    *ofnBufferLen = maxFilenameLength + 5;
    *ofn = (char*)malloc_orDie(*ofnBufferLen);
    ress.fBuffer = malloc_orDie(ress.fBufferSize);
    ress.cBuffer = malloc_orDie(ress.cBufferSize);
    ress.cctx = ZSTD_createCCtx();
    CHECK(ress.cctx != ((void*)0), "ZSTD_createCCtx() failed!");
    return ress;
}
