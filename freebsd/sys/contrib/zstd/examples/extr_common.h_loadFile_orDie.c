
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int CHECK (int,char*) ;
 int ERROR_fread ;
 int errno ;
 int exit (int ) ;
 int fclose (int * const) ;
 int * fopen_orDie (char const*,char*) ;
 int fprintf (int ,char*,char const*,char*) ;
 size_t fread (void*,int,size_t const,int * const) ;
 size_t fsize_orDie (char const*) ;
 int stderr ;
 char* strerror (int ) ;

__attribute__((used)) static size_t loadFile_orDie(const char* fileName, void* buffer, size_t bufferSize)
{
    size_t const fileSize = fsize_orDie(fileName);
    CHECK(fileSize <= bufferSize, "File too large!");

    FILE* const inFile = fopen_orDie(fileName, "rb");
    size_t const readSize = fread(buffer, 1, fileSize, inFile);
    if (readSize != (size_t)fileSize) {
        fprintf(stderr, "fread: %s : %s \n", fileName, strerror(errno));
        exit(ERROR_fread);
    }
    fclose(inFile);
    return fileSize;
}
