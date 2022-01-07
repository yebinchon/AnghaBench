
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int ERROR_fwrite ;
 int exit (int ) ;
 size_t fwrite (void const*,int,size_t,int *) ;
 int perror (char*) ;

__attribute__((used)) static size_t fwrite_orDie(const void* buffer, size_t sizeToWrite, FILE* file)
{
    size_t const writtenSize = fwrite(buffer, 1, sizeToWrite, file);
    if (writtenSize == sizeToWrite) return sizeToWrite;

    perror("fwrite");
    exit(ERROR_fwrite);
}
