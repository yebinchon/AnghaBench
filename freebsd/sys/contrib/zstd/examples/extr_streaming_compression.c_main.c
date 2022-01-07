
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int compressFile_orDie (char const* const,char* const,int) ;
 char* createOutFilename_orDie (char const* const) ;
 int free (char* const) ;
 int printf (char*,...) ;

int main(int argc, const char** argv)
{
    const char* const exeName = argv[0];

    if (argc!=2) {
        printf("wrong arguments\n");
        printf("usage:\n");
        printf("%s FILE\n", exeName);
        return 1;
    }

    const char* const inFilename = argv[1];

    char* const outFilename = createOutFilename_orDie(inFilename);
    compressFile_orDie(inFilename, outFilename, 1);

    free(outFilename);

    return 0;
}
