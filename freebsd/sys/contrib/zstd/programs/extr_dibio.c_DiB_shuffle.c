
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;


 unsigned int DiB_rand (int*) ;
 int assert (int) ;

__attribute__((used)) static void DiB_shuffle(const char** fileNamesTable, unsigned nbFiles) {
    U32 seed = 0xFD2FB528;
    unsigned i;
    assert(nbFiles >= 1);
    for (i = nbFiles - 1; i > 0; --i) {
        unsigned const j = DiB_rand(&seed) % (i + 1);
        const char* const tmp = fileNamesTable[j];
        fileNamesTable[j] = fileNamesTable[i];
        fileNamesTable[i] = tmp;
    }
}
