
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t nbDDict; int ** ddicts; } ;
typedef TYPE_1__ ddict_collection_t ;
typedef int ZSTD_DDict ;


 int * ZSTD_createDDict (void const*,size_t) ;
 int assert (int ) ;
 TYPE_1__ kNullDDictCollection ;
 int ** malloc (size_t) ;

__attribute__((used)) static ddict_collection_t createDDictCollection(const void* dictBuffer, size_t dictSize, size_t nbDDict)
{
    ZSTD_DDict** const ddicts = malloc(nbDDict * sizeof(ZSTD_DDict*));
    assert(ddicts != ((void*)0));
    if (ddicts==((void*)0)) return kNullDDictCollection;
    for (size_t dictNb=0; dictNb < nbDDict; dictNb++) {
        ddicts[dictNb] = ZSTD_createDDict(dictBuffer, dictSize);
        assert(ddicts[dictNb] != ((void*)0));
    }
    ddict_collection_t ddictc;
    ddictc.ddicts = ddicts;
    ddictc.nbDDict = nbDDict;
    return ddictc;
}
