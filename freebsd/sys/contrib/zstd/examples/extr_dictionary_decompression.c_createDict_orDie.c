
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_DDict ;


 int CHECK (int ,char*) ;
 int * ZSTD_createDDict (void* const,size_t) ;
 int free (void* const) ;
 void* mallocAndLoadFile_orDie (char const*,size_t*) ;
 int printf (char*,char const*) ;

__attribute__((used)) static ZSTD_DDict* createDict_orDie(const char* dictFileName)
{
    size_t dictSize;
    printf("loading dictionary %s \n", dictFileName);
    void* const dictBuffer = mallocAndLoadFile_orDie(dictFileName, &dictSize);
    ZSTD_DDict* const ddict = ZSTD_createDDict(dictBuffer, dictSize);
    CHECK(ddict != ((void*)0), "ZSTD_createDDict() failed!");
    free(dictBuffer);
    return ddict;
}
