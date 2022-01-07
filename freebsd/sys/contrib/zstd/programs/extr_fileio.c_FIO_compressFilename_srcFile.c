
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * srcFile; int * dictFileName; } ;
typedef TYPE_1__ cRess_t ;
struct TYPE_8__ {int excludeCompressedFiles; scalar_t__ removeSrcFile; } ;
typedef TYPE_2__ FIO_prefs_t ;


 int DISPLAYLEVEL (int,char*,char const*) ;
 int EXM_THROW (int,char*,char const*,int ) ;
 int FIO_compressFilename_dstFile (TYPE_2__* const,TYPE_1__,char const*,char const*,int) ;
 int * FIO_openSrcFile (char const*) ;
 scalar_t__ FIO_remove (char const*) ;
 scalar_t__ UTIL_isCompressedFile (char const*,int ) ;
 scalar_t__ UTIL_isDirectory (char const*) ;
 scalar_t__ UTIL_isSameFile (char const*,int *) ;
 int clearHandler () ;
 int compressedFileExtensions ;
 int errno ;
 int fclose (int *) ;
 int stdinmark ;
 scalar_t__ strcmp (char const*,int ) ;
 int strerror (int ) ;

__attribute__((used)) static int
FIO_compressFilename_srcFile(FIO_prefs_t* const prefs,
                             cRess_t ress,
                             const char* dstFileName,
                             const char* srcFileName,
                             int compressionLevel)
{
    int result;


    if (UTIL_isDirectory(srcFileName)) {
        DISPLAYLEVEL(1, "zstd: %s is a directory -- ignored \n", srcFileName);
        return 1;
    }


    if (ress.dictFileName != ((void*)0) && UTIL_isSameFile(srcFileName, ress.dictFileName)) {
        DISPLAYLEVEL(1, "zstd: cannot use %s as an input file and dictionary \n", srcFileName);
        return 1;
    }





    if (prefs->excludeCompressedFiles == 1 && UTIL_isCompressedFile(srcFileName, compressedFileExtensions)) {
        DISPLAYLEVEL(4, "File is already compressed : %s \n", srcFileName);
        return 0;
    }

    ress.srcFile = FIO_openSrcFile(srcFileName);
    if (ress.srcFile == ((void*)0)) return 1;

    result = FIO_compressFilename_dstFile(prefs, ress, dstFileName, srcFileName, compressionLevel);

    fclose(ress.srcFile);
    ress.srcFile = ((void*)0);
    if ( prefs->removeSrcFile
      && result == 0
      && strcmp(srcFileName, stdinmark)
      ) {



        clearHandler();
        if (FIO_remove(srcFileName))
            EXM_THROW(1, "zstd: %s: %s", srcFileName, strerror(errno));
    }
    return result;
}
