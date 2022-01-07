
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int resources ;


 int CHECK (int,char*) ;
 int compressFile_orDie (int const,char const* const,char*) ;
 int createResources_orDie (int,char const**,char**,size_t*) ;
 int freeResources (int const,char*) ;
 int memcpy (char*,char const* const,size_t const) ;
 int printf (char*,...) ;
 size_t strlen (char const* const) ;

int main(int argc, const char** argv)
{
    const char* const exeName = argv[0];

    if (argc<2) {
        printf("wrong arguments\n");
        printf("usage:\n");
        printf("%s FILE(s)\n", exeName);
        return 1;
    }


    char* outFilename;
    size_t outFilenameBufferLen;
    resources const ress = createResources_orDie(argc, argv, &outFilename, &outFilenameBufferLen);


    int argNb;
    for (argNb = 1; argNb < argc; argNb++) {
        const char* const inFilename = argv[argNb];
        size_t const inFilenameLen = strlen(inFilename);
        CHECK(inFilenameLen + 5 <= outFilenameBufferLen, "File name too long!");
        memcpy(outFilename, inFilename, inFilenameLen);
        memcpy(outFilename+inFilenameLen, ".zst", 5);
        compressFile_orDie(ress, inFilename, outFilename);
    }


    freeResources(ress,outFilename);

    printf("compressed %i files \n", argc-1);

    return 0;
}
