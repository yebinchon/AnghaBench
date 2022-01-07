
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int stat_t ;
struct TYPE_4__ {int * dstFile; int * srcFile; } ;
typedef TYPE_1__ cRess_t ;
typedef int FIO_prefs_t ;
typedef int FILE ;


 int DISPLAYLEVEL (int,char*,char const*,...) ;
 int FIO_compressFilename_internal (int * const,TYPE_1__,char const*,char const*,int) ;
 int * FIO_openDstFile (int * const,char const*,char const*) ;
 int FIO_remove (char const*) ;
 scalar_t__ UTIL_getFileStat (char const*,int *) ;
 int UTIL_setFileStat (char const*,int *) ;
 int addHandler (char const*) ;
 int assert (int ) ;
 int clearHandler () ;
 int errno ;
 scalar_t__ fclose (int * const) ;
 int nulmark ;
 int stdinmark ;
 int stdoutmark ;
 scalar_t__ strcmp (char const*,int ) ;
 int strerror (int ) ;

__attribute__((used)) static int FIO_compressFilename_dstFile(FIO_prefs_t* const prefs,
                                        cRess_t ress,
                                        const char* dstFileName,
                                        const char* srcFileName,
                                        int compressionLevel)
{
    int closeDstFile = 0;
    int result;
    stat_t statbuf;
    int transfer_permissions = 0;
    assert(ress.srcFile != ((void*)0));
    if (ress.dstFile == ((void*)0)) {
        closeDstFile = 1;
        DISPLAYLEVEL(6, "FIO_compressFilename_dstFile: opening dst: %s", dstFileName);
        ress.dstFile = FIO_openDstFile(prefs, srcFileName, dstFileName);
        if (ress.dstFile==((void*)0)) return 1;




        addHandler(dstFileName);

        if ( strcmp (srcFileName, stdinmark)
          && UTIL_getFileStat(srcFileName, &statbuf))
            transfer_permissions = 1;
    }

    result = FIO_compressFilename_internal(prefs, ress, dstFileName, srcFileName, compressionLevel);

    if (closeDstFile) {
        FILE* const dstFile = ress.dstFile;
        ress.dstFile = ((void*)0);

        clearHandler();

        if (fclose(dstFile)) {
            DISPLAYLEVEL(1, "zstd: %s: %s \n", dstFileName, strerror(errno));
            result=1;
        }
        if ( (result != 0)
          && strcmp(dstFileName, nulmark)
          && strcmp(dstFileName, stdoutmark)
          ) {
            FIO_remove(dstFileName);
        } else if ( strcmp(dstFileName, stdoutmark)
                 && strcmp(dstFileName, nulmark)
                 && transfer_permissions) {
            UTIL_setFileStat(dstFileName, &statbuf);
        }
    }

    return result;
}
