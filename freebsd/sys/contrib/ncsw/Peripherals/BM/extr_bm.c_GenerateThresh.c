
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static __inline__ uint32_t GenerateThresh(uint32_t val, int roundup)
{
    uint32_t e = 0;
    uint32_t oddbit = 0;
    while(val > 0xff) {
        oddbit = val & 1;
        val >>= 1;
        e++;
        if(roundup && oddbit)
            val++;
    }
    return (val | (e << 8));
}
