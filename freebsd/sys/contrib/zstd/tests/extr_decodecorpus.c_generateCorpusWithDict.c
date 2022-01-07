
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ genType_e ;
struct TYPE_4__ {int * srcStart; scalar_t__ src; int * dataStart; scalar_t__ data; } ;
typedef TYPE_1__ frame_t ;
typedef int dictInfo ;
typedef int U32 ;
typedef int BYTE ;


 int DISPLAY (char*) ;
 int DISPLAYUPDATE (char*,unsigned int,unsigned int) ;
 unsigned int MAX (size_t const,int) ;
 int MAX_PATH ;
 int RAND (int *) ;
 int free (int *) ;
 int genRandomDict (int const,int ,size_t const,int *) ;
 int generateCompressedBlock (int ,TYPE_1__*,int const) ;
 int generateFrame (int ,TYPE_1__*,int const) ;
 scalar_t__ gt_frame ;
 int initDictInfo (int,size_t const,int * const,int const) ;
 int * malloc (size_t const) ;
 int outputBuffer (int *,size_t const,char const* const) ;
 int snprintf (char*,int,char*,char const* const,...) ;

__attribute__((used)) static int generateCorpusWithDict(U32 seed, unsigned numFiles, const char* const path,
                                  const char* const origPath, const size_t dictSize,
                                  genType_e genType)
{
    char outPath[MAX_PATH];
    BYTE* fullDict;
    U32 const dictID = RAND(&seed);
    int errorDetected = 0;

    if (snprintf(outPath, MAX_PATH, "%s/dictionary", path) + 1 > MAX_PATH) {
        DISPLAY("Error: path too long\n");
        return 1;
    }


    fullDict = malloc(dictSize);
    if (fullDict == ((void*)0)) {
        DISPLAY("Error: could not allocate space for full dictionary.\n");
        return 1;
    }


    { int const ret = genRandomDict(dictID, seed, dictSize, fullDict);
        if (ret != 0) {
            errorDetected = ret;
            goto dictCleanup;
        }
    }


    if (numFiles != 0) {
        if (snprintf(outPath, MAX_PATH, "%s/dictionary", path) + 1 > MAX_PATH) {
            DISPLAY("Error: dictionary path too long\n");
            errorDetected = 1;
            goto dictCleanup;
        }
        outputBuffer(fullDict, dictSize, outPath);
    }
    else {
        outputBuffer(fullDict, dictSize, "dictionary");
    }


    { unsigned fnum;
        for (fnum = 0; fnum < MAX(numFiles, 1); fnum++) {
            frame_t fr;
            DISPLAYUPDATE("\r%u/%u        ", fnum, numFiles);
            {
                size_t const headerSize = MAX(dictSize/4, 256);
                size_t const dictContentSize = dictSize-headerSize;
                BYTE* const dictContent = fullDict+headerSize;
                dictInfo const info = initDictInfo(1, dictContentSize, dictContent, dictID);
                if (genType == gt_frame) {
                    seed = generateFrame(seed, &fr, info);
                } else {
                    seed = generateCompressedBlock(seed, &fr, info);
                }
            }

            if (numFiles != 0) {
                if (snprintf(outPath, MAX_PATH, "%s/z%06u.zst", path, fnum) + 1 > MAX_PATH) {
                    DISPLAY("Error: path too long\n");
                    errorDetected = 1;
                    goto dictCleanup;
                }
                outputBuffer(fr.dataStart, (BYTE*)fr.data - (BYTE*)fr.dataStart, outPath);

                if (origPath) {
                    if (snprintf(outPath, MAX_PATH, "%s/z%06u", origPath, fnum) + 1 > MAX_PATH) {
                        DISPLAY("Error: path too long\n");
                        errorDetected = 1;
                        goto dictCleanup;
                    }
                    outputBuffer(fr.srcStart, (BYTE*)fr.src - (BYTE*)fr.srcStart, outPath);
                }
            }
            else {
                outputBuffer(fr.dataStart, (BYTE*)fr.data - (BYTE*)fr.dataStart, path);
                if (origPath) {
                    outputBuffer(fr.srcStart, (BYTE*)fr.src - (BYTE*)fr.srcStart, origPath);
                }
            }
        }
    }

dictCleanup:
    free(fullDict);
    return errorDetected;
}
