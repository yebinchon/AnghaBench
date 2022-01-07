
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * dstFile; } ;
typedef TYPE_1__ cRess_t ;
typedef int ZSTD_compressionParameters ;
typedef int FIO_prefs_t ;


 int EXM_THROW (int,char*,int ,char const*) ;
 int FIO_checkFilenameCollisions (char const**,unsigned int) ;
 int FIO_compressFilename_srcFile (int * const,TYPE_1__,char const* const,char const* const,int) ;
 TYPE_1__ FIO_createCResources (int * const,char const*,int,int ) ;
 char* FIO_determineCompressedName (char const* const,char const*,char const*) ;
 int FIO_freeCResources (TYPE_1__) ;
 int * FIO_openDstFile (int * const,int *,char const*) ;
 int assert (int) ;
 int errno ;
 scalar_t__ fclose (int *) ;
 int strerror (int ) ;

int FIO_compressMultipleFilenames(FIO_prefs_t* const prefs,
                                  const char** inFileNamesTable, unsigned nbFiles,
                                  const char* outDirName,
                                  const char* outFileName, const char* suffix,
                                  const char* dictFileName, int compressionLevel,
                                  ZSTD_compressionParameters comprParams)
{
    int error = 0;
    cRess_t ress = FIO_createCResources(prefs, dictFileName, compressionLevel, comprParams);


    assert(outFileName != ((void*)0) || suffix != ((void*)0));
    if (outFileName != ((void*)0)) {
        ress.dstFile = FIO_openDstFile(prefs, ((void*)0), outFileName);
        if (ress.dstFile == ((void*)0)) {
            error = 1;
        } else {
            unsigned u;
            for (u=0; u<nbFiles; u++)
                error |= FIO_compressFilename_srcFile(prefs, ress, outFileName, inFileNamesTable[u], compressionLevel);
            if (fclose(ress.dstFile))
                EXM_THROW(29, "Write error (%s) : cannot properly close %s",
                            strerror(errno), outFileName);
            ress.dstFile = ((void*)0);
        }
    } else {
        unsigned u;
        for (u=0; u<nbFiles; u++) {
            const char* const srcFileName = inFileNamesTable[u];
            const char* const dstFileName = FIO_determineCompressedName(srcFileName, outDirName, suffix);
            error |= FIO_compressFilename_srcFile(prefs, ress, dstFileName, srcFileName, compressionLevel);
        }
        if (outDirName)
            FIO_checkFilenameCollisions(inFileNamesTable ,nbFiles);
    }

    FIO_freeCResources(ress);
    return error;
}
