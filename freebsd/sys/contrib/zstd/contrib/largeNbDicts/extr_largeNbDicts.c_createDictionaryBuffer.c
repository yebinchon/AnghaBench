
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* ptr; size_t capacity; size_t size; } ;
typedef TYPE_1__ buffer_t ;


 int CONTROL (int) ;
 int DISPLAYLEVEL (int,char*,...) ;
 size_t UINT_MAX ;
 size_t ZDICT_trainFromBuffer (void* const,size_t,void const*,size_t const*,unsigned int) ;
 int ZSTD_isError (size_t const) ;
 int assert (int) ;
 TYPE_1__ createBuffer_fromFile (char const*) ;
 void* malloc (size_t) ;

__attribute__((used)) static buffer_t
createDictionaryBuffer(const char* dictionaryName,
                       const void* srcBuffer,
                       const size_t* srcBlockSizes, size_t nbBlocks,
                       size_t requestedDictSize)
{
    if (dictionaryName) {
        DISPLAYLEVEL(3, "loading dictionary %s \n", dictionaryName);
        return createBuffer_fromFile(dictionaryName);

    } else {

        DISPLAYLEVEL(3, "creating dictionary, of target size %u bytes \n",
                        (unsigned)requestedDictSize);
        void* const dictBuffer = malloc(requestedDictSize);
        CONTROL(dictBuffer != ((void*)0));

        assert(nbBlocks <= UINT_MAX);
        size_t const dictSize = ZDICT_trainFromBuffer(dictBuffer, requestedDictSize,
                                                      srcBuffer,
                                                      srcBlockSizes, (unsigned)nbBlocks);
        CONTROL(!ZSTD_isError(dictSize));

        buffer_t result;
        result.ptr = dictBuffer;
        result.capacity = requestedDictSize;
        result.size = dictSize;
        return result;
    }
}
