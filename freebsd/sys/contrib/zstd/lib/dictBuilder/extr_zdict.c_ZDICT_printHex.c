
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BYTE ;


 int DISPLAY (char*,int) ;

__attribute__((used)) static void ZDICT_printHex(const void* ptr, size_t length)
{
    const BYTE* const b = (const BYTE*)ptr;
    size_t u;
    for (u=0; u<length; u++) {
        BYTE c = b[u];
        if (c<32 || c>126) c = '.';
        DISPLAY("%c", c);
    }
}
