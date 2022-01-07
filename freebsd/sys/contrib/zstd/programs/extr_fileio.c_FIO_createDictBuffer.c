
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U64 ;
typedef int FILE ;


 int DICTSIZE_MAX ;
 int DISPLAYLEVEL (int,char*,char const*) ;
 int EXM_THROW (int,char*,...) ;
 int UTIL_getFileSize (char const*) ;
 int assert (int ) ;
 int errno ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 size_t fread (void*,int,size_t,int *) ;
 void* malloc (size_t) ;
 int strerror (int ) ;

__attribute__((used)) static size_t FIO_createDictBuffer(void** bufferPtr, const char* fileName)
{
    FILE* fileHandle;
    U64 fileSize;

    assert(bufferPtr != ((void*)0));
    *bufferPtr = ((void*)0);
    if (fileName == ((void*)0)) return 0;

    DISPLAYLEVEL(4,"Loading %s as dictionary \n", fileName);
    fileHandle = fopen(fileName, "rb");
    if (fileHandle==((void*)0)) EXM_THROW(31, "%s: %s", fileName, strerror(errno));

    fileSize = UTIL_getFileSize(fileName);
    if (fileSize > DICTSIZE_MAX) {
        EXM_THROW(32, "Dictionary file %s is too large (> %u MB)",
                        fileName, DICTSIZE_MAX >> 20);
    }
    *bufferPtr = malloc((size_t)fileSize);
    if (*bufferPtr==((void*)0)) EXM_THROW(34, "%s", strerror(errno));
    { size_t const readSize = fread(*bufferPtr, 1, (size_t)fileSize, fileHandle);
        if (readSize != fileSize)
            EXM_THROW(35, "Error reading dictionary file %s : %s",
                    fileName, strerror(errno));
    }
    fclose(fileHandle);
    return (size_t)fileSize;
}
