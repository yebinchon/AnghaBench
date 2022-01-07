
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t fsize_orDie (char const*) ;
 int loadFile_orDie (char const*,void* const,size_t) ;
 void* malloc_orDie (size_t) ;

__attribute__((used)) static void* mallocAndLoadFile_orDie(const char* fileName, size_t* bufferSize) {
    size_t const fileSize = fsize_orDie(fileName);
    *bufferSize = fileSize;
    void* const buffer = malloc_orDie(*bufferSize);
    loadFile_orDie(fileName, buffer, *bufferSize);
    return buffer;
}
