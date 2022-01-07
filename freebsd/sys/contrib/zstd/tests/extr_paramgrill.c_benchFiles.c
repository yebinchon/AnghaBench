
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int contexts_t ;
typedef int buffers_t ;


 int BMK_generate_cLevelTable (int ,int ) ;
 int DISPLAY (char*,...) ;
 int benchOnce (int ,int ,int) ;
 scalar_t__ createBuffers (int *,char const**,int) ;
 scalar_t__ createContexts (int *,char const*) ;
 int freeBuffers (int ) ;
 int freeContexts (int ) ;
 scalar_t__ g_singleRun ;

__attribute__((used)) static int benchFiles(const char** fileNamesTable, int nbFiles,
                      const char* dictFileName, int cLevel)
{
    buffers_t buf;
    contexts_t ctx;
    int ret = 0;

    if (createBuffers(&buf, fileNamesTable, nbFiles)) {
        DISPLAY("unable to load files\n");
        return 1;
    }

    if (createContexts(&ctx, dictFileName)) {
        DISPLAY("unable to load dictionary\n");
        freeBuffers(buf);
        return 2;
    }

    DISPLAY("\r%79s\r", "");
    if (nbFiles == 1) {
        DISPLAY("using %s : \n", fileNamesTable[0]);
    } else {
        DISPLAY("using %d Files : \n", nbFiles);
    }

    if (g_singleRun) {
        ret = benchOnce(buf, ctx, cLevel);
    } else {
        BMK_generate_cLevelTable(buf, ctx);
    }

    freeBuffers(buf);
    freeContexts(ctx);
    return ret;
}
