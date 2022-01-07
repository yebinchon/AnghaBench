
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_DDict ;


 int ZSTD_freeDDict (int * const) ;
 int * createDict_orDie (char const* const) ;
 int decompress (char const*,int * const) ;
 int printf (char*,...) ;

int main(int argc, const char** argv)
{
    const char* const exeName = argv[0];

    if (argc<3) {
        printf("wrong arguments\n");
        printf("usage:\n");
        printf("%s [FILES] dictionary\n", exeName);
        return 1;
    }


    const char* const dictName = argv[argc-1];
    ZSTD_DDict* const dictPtr = createDict_orDie(dictName);

    int u;
    for (u=1; u<argc-1; u++) decompress(argv[u], dictPtr);

    ZSTD_freeDDict(dictPtr);
    printf("All %u files correctly decoded (in memory) \n", argc-2);
    return 0;
}
