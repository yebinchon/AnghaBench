
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zdictParams ;
struct TYPE_4__ {int notificationLevel; int dictID; } ;
typedef TYPE_1__ ZDICT_params_t ;
typedef int U32 ;
typedef scalar_t__ BYTE ;


 int DISPLAY (char*,...) ;
 size_t MAX (size_t,int) ;
 int RAND_buffer (int *,void*,size_t const) ;
 size_t const ZDICT_CONTENTSIZE_MIN ;
 size_t ZDICT_DICTSIZE_MIN ;
 size_t ZDICT_finalizeDictionary (scalar_t__*,size_t,scalar_t__* const,size_t const,scalar_t__* const,size_t*,unsigned int const,TYPE_1__) ;
 int ZDICT_getErrorName (size_t) ;
 scalar_t__ ZDICT_isError (size_t) ;
 int free (scalar_t__* const) ;
 scalar_t__* malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static int genRandomDict(U32 dictID, U32 seed, size_t dictSize, BYTE* fullDict)
{

    int ret = 0;
    unsigned const numSamples = 4;
    size_t sampleSizes[4];
    BYTE* const samples = malloc(5000*sizeof(BYTE));
    if (samples == ((void*)0)) {
        DISPLAY("Error: could not allocate space for samples\n");
        return 1;
    }


    { unsigned literalValue = 1;
        unsigned samplesPos = 0;
        size_t currSize = 1;
        while (literalValue <= 4) {
            sampleSizes[literalValue - 1] = currSize;
            { size_t k;
                for (k = 0; k < currSize; k++) {
                    *(samples + (samplesPos++)) = (BYTE)literalValue;
            } }
            literalValue++;
            currSize *= 16;
    } }

    { size_t dictWriteSize = 0;
        ZDICT_params_t zdictParams;
        size_t const headerSize = MAX(dictSize/4, 256);
        size_t const dictContentSize = dictSize - headerSize;
        BYTE* const dictContent = fullDict + headerSize;
        if (dictContentSize < ZDICT_CONTENTSIZE_MIN || dictSize < ZDICT_DICTSIZE_MIN) {
            DISPLAY("Error: dictionary size is too small\n");
            ret = 1;
            goto exitGenRandomDict;
        }


        memset(&zdictParams, 0, sizeof(zdictParams));
        zdictParams.dictID = dictID;
        zdictParams.notificationLevel = 1;


        RAND_buffer(&seed, (void*)dictContent, dictContentSize);


        dictWriteSize = ZDICT_finalizeDictionary(fullDict, dictSize,
                                    dictContent, dictContentSize,
                                    samples, sampleSizes, numSamples,
                                    zdictParams);

        if (ZDICT_isError(dictWriteSize)) {
            DISPLAY("Could not finalize dictionary: %s\n", ZDICT_getErrorName(dictWriteSize));
            ret = 1;
        }
    }

exitGenRandomDict:
    free(samples);
    return ret;
}
