
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BENCH_TIME_DEFAULT_S ;
 int CLEVEL_DEFAULT ;
 int DISPLAY (char*,...) ;

int usage(const char* exeName)
{
    DISPLAY (" \n");
    DISPLAY (" %s [Options] filename(s) \n", exeName);
    DISPLAY (" \n");
    DISPLAY ("Options : \n");
    DISPLAY ("-r          : recursively load all files in subdirectories (default: off) \n");
    DISPLAY ("-B#         : split input into blocks of size # (default: no split) \n");
    DISPLAY ("-#          : use compression level # (default: %u) \n", CLEVEL_DEFAULT);
    DISPLAY ("-D #        : use # as a dictionary (default: create one) \n");
    DISPLAY ("-i#         : nb benchmark rounds (default: %u) \n", BENCH_TIME_DEFAULT_S);
    DISPLAY ("--nbBlocks=#: use # blocks for bench (default: one per file) \n");
    DISPLAY ("--nbDicts=# : create # dictionaries for bench (default: one per block) \n");
    DISPLAY ("-h          : help (this text) \n");
    return 0;
}
