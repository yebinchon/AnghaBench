
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_CDict ;


 int ZSTD_freeCDict (int * const) ;
 int compress (char const*,char* const,int * const) ;
 int * createCDict_orDie (char const* const,int const) ;
 char* createOutFilename_orDie (char const*) ;
 int fprintf (int ,char*,...) ;
 int free (char* const) ;
 int printf (char*,int) ;
 int stderr ;

int main(int argc, const char** argv)
{
    const char* const exeName = argv[0];
    int const cLevel = 3;

    if (argc<3) {
        fprintf(stderr, "wrong arguments\n");
        fprintf(stderr, "usage:\n");
        fprintf(stderr, "%s [FILES] dictionary\n", exeName);
        return 1;
    }


    const char* const dictName = argv[argc-1];
    ZSTD_CDict* const dictPtr = createCDict_orDie(dictName, cLevel);

    int u;
    for (u=1; u<argc-1; u++) {
        const char* inFilename = argv[u];
        char* const outFilename = createOutFilename_orDie(inFilename);
        compress(inFilename, outFilename, dictPtr);
        free(outFilename);
    }

    ZSTD_freeCDict(dictPtr);
    printf("All %u files compressed. \n", argc-2);
    return 0;
}
