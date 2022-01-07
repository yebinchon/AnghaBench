
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_compressionParameters ;
typedef int U64 ;
typedef int U32 ;
typedef int FILE ;


 int BMK_findMaxMem (int const) ;
 int DISPLAY (char*,...) ;
 int const UTIL_FILESIZE_UNKNOWN ;
 int UTIL_getFileSize (char const* const) ;
 int benchMem (int,void* const,size_t,int,int ) ;
 int fclose (int * const) ;
 int * fopen (char const* const,char*) ;
 size_t fread (void* const,int,size_t,int * const) ;
 int free (void* const) ;
 void* malloc (size_t) ;

__attribute__((used)) static int benchFiles(U32 benchNb,
                      const char** fileNamesTable, const int nbFiles,
                      int cLevel, ZSTD_compressionParameters cparams)
{

    int fileIdx;
    for (fileIdx=0; fileIdx<nbFiles; fileIdx++) {
        const char* const inFileName = fileNamesTable[fileIdx];
        FILE* const inFile = fopen( inFileName, "rb" );
        size_t benchedSize;


        if (inFile==((void*)0)) { DISPLAY( "Pb opening %s\n", inFileName); return 11; }


        { U64 const inFileSize = UTIL_getFileSize(inFileName);
            if (inFileSize == UTIL_FILESIZE_UNKNOWN) {
                DISPLAY( "Cannot measure size of %s\n", inFileName);
                fclose(inFile);
                return 11;
            }
            benchedSize = BMK_findMaxMem(inFileSize*3) / 3;
            if ((U64)benchedSize > inFileSize)
                benchedSize = (size_t)inFileSize;
            if ((U64)benchedSize < inFileSize) {
                DISPLAY("Not enough memory for '%s' full size; testing %u MB only... \n",
                        inFileName, (unsigned)(benchedSize>>20));
        } }


        { void* const origBuff = malloc(benchedSize);
            if (!origBuff) { DISPLAY("\nError: not enough memory!\n"); fclose(inFile); return 12; }


            DISPLAY("Loading %s...       \r", inFileName);
            { size_t const readSize = fread(origBuff, 1, benchedSize, inFile);
                fclose(inFile);
                if (readSize != benchedSize) {
                    DISPLAY("\nError: problem reading file '%s' !!    \n", inFileName);
                    free(origBuff);
                    return 13;
            } }


            DISPLAY("\r%70s\r", "");
            DISPLAY(" %s : \n", inFileName);
            if (benchNb) {
                benchMem(benchNb, origBuff, benchedSize, cLevel, cparams);
            } else {
                for (benchNb=0; benchNb<100; benchNb++) {
                    benchMem(benchNb, origBuff, benchedSize, cLevel, cparams);
            } }

            free(origBuff);
    } }

    return 0;
}
