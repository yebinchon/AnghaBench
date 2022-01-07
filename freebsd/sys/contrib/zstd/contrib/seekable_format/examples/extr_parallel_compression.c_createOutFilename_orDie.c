
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* malloc_orDie (size_t const) ;
 int memset (void*,int ,size_t const) ;
 int strcat (void*,char const*) ;
 size_t strlen (char const*) ;

__attribute__((used)) static const char* createOutFilename_orDie(const char* filename)
{
    size_t const inL = strlen(filename);
    size_t const outL = inL + 5;
    void* outSpace = malloc_orDie(outL);
    memset(outSpace, 0, outL);
    strcat(outSpace, filename);
    strcat(outSpace, ".zst");
    return (const char*)outSpace;
}
