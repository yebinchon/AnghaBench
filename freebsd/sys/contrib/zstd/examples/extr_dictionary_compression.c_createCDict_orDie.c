
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_CDict ;


 int CHECK (int ,char*) ;
 int * ZSTD_createCDict (void* const,size_t,int) ;
 int free (void* const) ;
 void* mallocAndLoadFile_orDie (char const*,size_t*) ;
 int printf (char*,char const*) ;

__attribute__((used)) static ZSTD_CDict* createCDict_orDie(const char* dictFileName, int cLevel)
{
    size_t dictSize;
    printf("loading dictionary %s \n", dictFileName);
    void* const dictBuffer = mallocAndLoadFile_orDie(dictFileName, &dictSize);
    ZSTD_CDict* const cdict = ZSTD_createCDict(dictBuffer, dictSize, cLevel);
    CHECK(cdict != ((void*)0), "ZSTD_createCDict() failed!");
    free(dictBuffer);
    return cdict;
}
