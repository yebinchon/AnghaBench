
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ sparseFileSupport; scalar_t__ testMode; } ;
typedef TYPE_1__ FIO_prefs_t ;
typedef int FILE ;


 int EXM_THROW (int,char*,...) ;
 scalar_t__ LONG_SEEK (int *,unsigned int,int ) ;
 int SEEK_CUR ;
 int assert (int) ;
 int errno ;
 int fwrite (char const*,int,int,int *) ;
 int strerror (int ) ;

__attribute__((used)) static void
FIO_fwriteSparseEnd(const FIO_prefs_t* const prefs, FILE* file, unsigned storedSkips)
{
    if (prefs->testMode) assert(storedSkips == 0);
    if (storedSkips>0) {
        assert(prefs->sparseFileSupport > 0);
        (void)prefs;
        if (LONG_SEEK(file, storedSkips-1, SEEK_CUR) != 0)
            EXM_THROW(69, "Final skip error (sparse file support)");


        { const char lastZeroByte[1] = { 0 };
            if (fwrite(lastZeroByte, 1, 1, file) != 1)
                EXM_THROW(69, "Write error : cannot write last zero : %s", strerror(errno));
    } }
}
