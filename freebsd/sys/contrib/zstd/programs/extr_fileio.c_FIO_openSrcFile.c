
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int DISPLAYLEVEL (int,char*,...) ;
 int SET_BINARY_MODE (int *) ;
 int UTIL_fileExist (char const*) ;
 int UTIL_isFIFO (char const*) ;
 int UTIL_isRegularFile (char const*) ;
 int assert (int ) ;
 int errno ;
 int * fopen (char const*,char*) ;
 int * stdin ;
 int stdinmark ;
 int strcmp (char const*,int ) ;
 int strerror (int ) ;

__attribute__((used)) static FILE* FIO_openSrcFile(const char* srcFileName)
{
    assert(srcFileName != ((void*)0));
    if (!strcmp (srcFileName, stdinmark)) {
        DISPLAYLEVEL(4,"Using stdin for input \n");
        SET_BINARY_MODE(stdin);
        return stdin;
    }

    if (!UTIL_fileExist(srcFileName)) {
        DISPLAYLEVEL(1, "zstd: can't stat %s : %s -- ignored \n",
                        srcFileName, strerror(errno));
        return ((void*)0);
    }

    if (!UTIL_isRegularFile(srcFileName)

        && !UTIL_isFIFO(srcFileName)

    ) {
        DISPLAYLEVEL(1, "zstd: %s is not a regular file -- ignored \n",
                        srcFileName);
        return ((void*)0);
    }

    { FILE* const f = fopen(srcFileName, "rb");
        if (f == ((void*)0))
            DISPLAYLEVEL(1, "zstd: %s: %s \n", srcFileName, strerror(errno));
        return f;
    }
}
