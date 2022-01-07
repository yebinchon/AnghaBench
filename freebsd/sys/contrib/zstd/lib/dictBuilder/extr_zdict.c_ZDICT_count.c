
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t MEM_readST (void const*) ;
 int ZDICT_NbCommonBytes (size_t const) ;

__attribute__((used)) static size_t ZDICT_count(const void* pIn, const void* pMatch)
{
    const char* const pStart = (const char*)pIn;
    for (;;) {
        size_t const diff = MEM_readST(pMatch) ^ MEM_readST(pIn);
        if (!diff) {
            pIn = (const char*)pIn+sizeof(size_t);
            pMatch = (const char*)pMatch+sizeof(size_t);
            continue;
        }
        pIn = (const char*)pIn+ZDICT_NbCommonBytes(diff);
        return (size_t)((const char*)pIn - pStart);
    }
}
