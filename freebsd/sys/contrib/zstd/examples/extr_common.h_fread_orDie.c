
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int ERROR_fread ;
 int exit (int ) ;
 scalar_t__ feof (int *) ;
 size_t fread (void*,int,size_t,int *) ;
 int perror (char*) ;

__attribute__((used)) static size_t fread_orDie(void* buffer, size_t sizeToRead, FILE* file)
{
    size_t const readSize = fread(buffer, 1, sizeToRead, file);
    if (readSize == sizeToRead) return readSize;
    if (feof(file)) return readSize;

    perror("fread");
    exit(ERROR_fread);
}
