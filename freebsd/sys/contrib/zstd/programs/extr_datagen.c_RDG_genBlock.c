
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ U32 ;
typedef int BYTE ;


 scalar_t__ MIN (scalar_t__ const,size_t) ;
 int RDG_genChar (scalar_t__*,int const*) ;
 int RDG_rand (scalar_t__*) ;
 scalar_t__ const RDG_rand15Bits (scalar_t__*) ;
 scalar_t__ RDG_randLength (scalar_t__*) ;
 int memset (int * const,int ,size_t) ;

__attribute__((used)) static void RDG_genBlock(void* buffer, size_t buffSize, size_t prefixSize,
                         double matchProba, const BYTE* ldt, U32* seedPtr)
{
    BYTE* const buffPtr = (BYTE*)buffer;
    U32 const matchProba32 = (U32)(32768 * matchProba);
    size_t pos = prefixSize;
    U32 prevOffset = 1;


    while (matchProba >= 1.0) {
        size_t size0 = RDG_rand(seedPtr) & 3;
        size0 = (size_t)1 << (16 + size0 * 2);
        size0 += RDG_rand(seedPtr) & (size0-1);
        if (buffSize < pos + size0) {
            memset(buffPtr+pos, 0, buffSize-pos);
            return;
        }
        memset(buffPtr+pos, 0, size0);
        pos += size0;
        buffPtr[pos-1] = RDG_genChar(seedPtr, ldt);
        continue;
    }


    if (pos==0) buffPtr[0] = RDG_genChar(seedPtr, ldt), pos=1;


    while (pos < buffSize) {

        if (RDG_rand15Bits(seedPtr) < matchProba32) {

            U32 const length = RDG_randLength(seedPtr) + 4;
            U32 const d = (U32) MIN(pos + length , buffSize);
            U32 const repeatOffset = (RDG_rand(seedPtr) & 15) == 2;
            U32 const randOffset = RDG_rand15Bits(seedPtr) + 1;
            U32 const offset = repeatOffset ? prevOffset : (U32) MIN(randOffset , pos);
            size_t match = pos - offset;
            while (pos < d) { buffPtr[pos++] = buffPtr[match++]; }
            prevOffset = offset;
        } else {

            U32 const length = RDG_randLength(seedPtr);
            U32 const d = (U32) MIN(pos + length, buffSize);
            while (pos < d) { buffPtr[pos++] = RDG_genChar(seedPtr, ldt); }
    } }
}
