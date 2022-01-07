
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DISPLAYLEVEL (int,char*,char const*,int ) ;
 int EXM_THROW (int,char*,int ) ;
 char* FIO_createFilename_fromOutDir (char const*,char const*,int ) ;
 int assert (int ) ;
 int errno ;
 int free (char*) ;
 scalar_t__ malloc (size_t) ;
 int memcpy (char*,char const*,size_t) ;
 int strcmp (char const*,char const* const) ;
 int strcpy (char*,char const*) ;
 int strerror (int ) ;
 size_t strlen (char const*) ;
 char* strrchr (char const*,char) ;
 char** suffixList ;
 int suffixListStr ;

__attribute__((used)) static const char*
FIO_determineDstName(const char* srcFileName, const char* outDirName)
{
    static size_t dfnbCapacity = 0;
    static char* dstFileNameBuffer = ((void*)0);
    size_t dstFileNameEndPos;
    char* outDirFilename = ((void*)0);
    const char* dstSuffix = "";
    size_t dstSuffixLen = 0;

    size_t sfnSize = strlen(srcFileName);

    size_t srcSuffixLen;
    const char* const srcSuffix = strrchr(srcFileName, '.');
    if (srcSuffix == ((void*)0)) {
        DISPLAYLEVEL(1,
            "zstd: %s: unknown suffix (%s expected). "
            "Can't derive the output file name. "
            "Specify it with -o dstFileName. Ignoring.\n",
            srcFileName, suffixListStr);
        return ((void*)0);
    }
    srcSuffixLen = strlen(srcSuffix);

    {
        const char** matchedSuffixPtr;
        for (matchedSuffixPtr = suffixList; *matchedSuffixPtr != ((void*)0); matchedSuffixPtr++) {
            if (!strcmp(*matchedSuffixPtr, srcSuffix)) {
                break;
            }
        }


        if (sfnSize <= srcSuffixLen || *matchedSuffixPtr == ((void*)0)) {
            DISPLAYLEVEL(1,
                "zstd: %s: unknown suffix (%s expected). "
                "Can't derive the output file name. "
                "Specify it with -o dstFileName. Ignoring.\n",
                srcFileName, suffixListStr);
            return ((void*)0);
        }

        if ((*matchedSuffixPtr)[1] == 't') {
            dstSuffix = ".tar";
            dstSuffixLen = strlen(dstSuffix);
        }
    }

    if (outDirName) {
        outDirFilename = FIO_createFilename_fromOutDir(srcFileName, outDirName, 0);
        sfnSize = strlen(outDirFilename);
        assert(outDirFilename != ((void*)0));
    }

    if (dfnbCapacity+srcSuffixLen <= sfnSize+1+dstSuffixLen) {

        free(dstFileNameBuffer);
        dfnbCapacity = sfnSize + 20;
        dstFileNameBuffer = (char*)malloc(dfnbCapacity);
        if (dstFileNameBuffer==((void*)0))
            EXM_THROW(74, "%s : not enough memory for dstFileName",
                      strerror(errno));
    }


    assert(dstFileNameBuffer != ((void*)0));
    dstFileNameEndPos = sfnSize - srcSuffixLen;
    if (outDirFilename) {
        memcpy(dstFileNameBuffer, outDirFilename, dstFileNameEndPos);
        free(outDirFilename);
    } else {
        memcpy(dstFileNameBuffer, srcFileName, dstFileNameEndPos);
    }



    strcpy(dstFileNameBuffer + dstFileNameEndPos, dstSuffix);
    return dstFileNameBuffer;


}
