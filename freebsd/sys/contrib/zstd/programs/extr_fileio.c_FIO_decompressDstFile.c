
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int stat_t ;
struct TYPE_8__ {int * dstFile; } ;
typedef TYPE_1__ dRess_t ;
struct TYPE_9__ {scalar_t__ testMode; } ;
typedef TYPE_2__ FIO_prefs_t ;
typedef int FILE ;


 int DISPLAYLEVEL (int,char*,char const*,int ) ;
 int FIO_decompressFrames (TYPE_2__* const,TYPE_1__,int *,char const*,char const*) ;
 int * FIO_openDstFile (TYPE_2__* const,char const*,char const*) ;
 int FIO_remove (char const*) ;
 scalar_t__ UTIL_getFileStat (char const*,int *) ;
 int UTIL_setFileStat (char const*,int *) ;
 int addHandler (char const*) ;
 int clearHandler () ;
 int errno ;
 scalar_t__ fclose (int * const) ;
 int nulmark ;
 int stdinmark ;
 int stdoutmark ;
 scalar_t__ strcmp (char const*,int ) ;
 int strerror (int ) ;

__attribute__((used)) static int FIO_decompressDstFile(FIO_prefs_t* const prefs,
                                 dRess_t ress, FILE* srcFile,
                                 const char* dstFileName, const char* srcFileName)
{
    int result;
    stat_t statbuf;
    int transfer_permissions = 0;
    int releaseDstFile = 0;

    if ((ress.dstFile == ((void*)0)) && (prefs->testMode==0)) {
        releaseDstFile = 1;

        ress.dstFile = FIO_openDstFile(prefs, srcFileName, dstFileName);
        if (ress.dstFile==((void*)0)) return 1;





        addHandler(dstFileName);

        if ( strcmp(srcFileName, stdinmark)
          && UTIL_getFileStat(srcFileName, &statbuf) )
            transfer_permissions = 1;
    }

    result = FIO_decompressFrames(prefs, ress, srcFile, dstFileName, srcFileName);

    if (releaseDstFile) {
        FILE* const dstFile = ress.dstFile;
        clearHandler();
        ress.dstFile = ((void*)0);
        if (fclose(dstFile)) {
            DISPLAYLEVEL(1, "zstd: %s: %s \n", dstFileName, strerror(errno));
            result = 1;
        }

        if ( (result != 0)
          && strcmp(dstFileName, nulmark)
          && strcmp(dstFileName, stdoutmark)
          ) {
            FIO_remove(dstFileName);
        } else {
            if ( strcmp(dstFileName, stdoutmark)
              && strcmp(dstFileName, nulmark)
              && transfer_permissions )
                UTIL_setFileStat(dstFileName, &statbuf);
        }
    }

    return result;
}
