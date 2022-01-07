
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int ERROR_fclose ;
 int ERROR_fwrite ;
 int errno ;
 int exit (int ) ;
 scalar_t__ fclose (int * const) ;
 int * fopen_orDie (char const*,char*) ;
 int fprintf (int ,char*,char const*,char*) ;
 size_t fwrite (void const*,int,size_t,int * const) ;
 int perror (char const*) ;
 int stderr ;
 char* strerror (int ) ;

__attribute__((used)) static void saveFile_orDie(const char* fileName, const void* buff, size_t buffSize)
{
    FILE* const oFile = fopen_orDie(fileName, "wb");
    size_t const wSize = fwrite(buff, 1, buffSize, oFile);
    if (wSize != (size_t)buffSize) {
        fprintf(stderr, "fwrite: %s : %s \n", fileName, strerror(errno));
        exit(ERROR_fwrite);
    }
    if (fclose(oFile)) {
        perror(fileName);
        exit(ERROR_fclose);
    }
}
