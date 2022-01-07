
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int displayLevel; } ;
struct TYPE_4__ {int sparseFileSupport; int overwrite; scalar_t__ testMode; } ;
typedef TYPE_1__ FIO_prefs_t ;
typedef int FILE ;


 int DISPLAY (char*,...) ;
 int DISPLAYLEVEL (int,char*,...) ;
 int EOF ;
 int EXM_THROW (int,char*,char const*) ;
 int FIO_remove (char const*) ;
 int SET_BINARY_MODE (int *) ;
 scalar_t__ UTIL_isRegularFile (char const*) ;
 scalar_t__ UTIL_isSameFile (char const*,char const*) ;
 int ZSTD_SPARSE_DEFAULT ;
 int assert (int ) ;
 int chmod (char const*,int) ;
 int errno ;
 int fclose (int * const) ;
 int * fopen (char const*,char*) ;
 TYPE_2__ g_display_prefs ;
 int getchar () ;
 int nulmark ;
 int stdinmark ;
 int * stdout ;
 int stdoutmark ;
 scalar_t__ strcmp (char const*,int ) ;
 int strerror (int ) ;

__attribute__((used)) static FILE*
FIO_openDstFile(FIO_prefs_t* const prefs,
          const char* srcFileName, const char* dstFileName)
{
    if (prefs->testMode) return ((void*)0);

    assert(dstFileName != ((void*)0));
    if (!strcmp (dstFileName, stdoutmark)) {
        DISPLAYLEVEL(4,"Using stdout for output \n");
        SET_BINARY_MODE(stdout);
        if (prefs->sparseFileSupport == 1) {
            prefs->sparseFileSupport = 0;
            DISPLAYLEVEL(4, "Sparse File Support is automatically disabled on stdout ; try --sparse \n");
        }
        return stdout;
    }


    if (srcFileName != ((void*)0) && UTIL_isSameFile(srcFileName, dstFileName)) {
        DISPLAYLEVEL(1, "zstd: Refusing to open an output file which will overwrite the input file \n");
        return ((void*)0);
    }

    if (prefs->sparseFileSupport == 1) {
        prefs->sparseFileSupport = ZSTD_SPARSE_DEFAULT;
    }

    if (UTIL_isRegularFile(dstFileName)) {

        FILE* const fCheck = fopen( dstFileName, "rb" );



        if (!strcmp(dstFileName, nulmark)) {
            EXM_THROW(40, "%s is unexpectedly categorized as a regular file",
                        dstFileName);
        }

        if (fCheck != ((void*)0)) {
            fclose(fCheck);
            if (!prefs->overwrite) {
                if (g_display_prefs.displayLevel <= 1) {

                    DISPLAY("zstd: %s already exists; not overwritten  \n",
                            dstFileName);
                    return ((void*)0);
                }
                DISPLAY("zstd: %s already exists; overwrite (y/N) ? ",
                        dstFileName);
                { int ch = getchar();
                    if ((ch!='Y') && (ch!='y')) {
                        DISPLAY("    not overwritten  \n");
                        return ((void*)0);
                    }

                    while ((ch!=EOF) && (ch!='\n')) ch = getchar();
            } }

            FIO_remove(dstFileName);
    } }

    { FILE* const f = fopen( dstFileName, "wb" );
        if (f == ((void*)0)) {
            DISPLAYLEVEL(1, "zstd: %s: %s\n", dstFileName, strerror(errno));
        } else if(srcFileName != ((void*)0) && strcmp (srcFileName, stdinmark)) {
            chmod(dstFileName, 00600);
        }
        return f;
    }
}
