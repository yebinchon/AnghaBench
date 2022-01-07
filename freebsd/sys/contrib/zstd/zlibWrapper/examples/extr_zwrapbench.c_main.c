
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* U32 ;


 int BMK_SetBlockSize (size_t) ;
 int BMK_SetNbIterations (void* const) ;
 int BMK_benchFiles (char const**,unsigned int,char const*,int,int) ;
 int BMK_setAdditionalParam (void*) ;
 int BMK_setNotificationLevel (int ) ;
 int CLEAN_RETURN (int ) ;
 int DISPLAY (char*,...) ;
 int DISPLAYLEVEL (int,char*,...) ;
 char** UTIL_createFileList (char const**,unsigned int,char**,unsigned int*,int) ;
 int UTIL_freeFileList (char const**,char*) ;
 int WELCOME_MESSAGE ;
 int ZSTDCLI_CLEVEL_DEFAULT ;
 int badusage (char const*) ;
 int displayOut ;
 int errno ;
 int exit (int) ;
 int free (void*) ;
 int g_displayLevel ;
 scalar_t__ malloc (int) ;
 void* readU32FromChar (char const**) ;
 int stderr ;
 int stdout ;
 int strcmp (char const*,char*) ;
 int strerror (int ) ;
 scalar_t__ strlen (char const*) ;
 char toupper (char const) ;
 int usage (char const*) ;
 int waitEnter () ;

int main(int argCount, char** argv)
{
    int argNb,
        main_pause=0,
        nextEntryIsDictionary=0,
        operationResult=0,
        nextArgumentIsFile=0;
    int cLevel = ZSTDCLI_CLEVEL_DEFAULT;
    int cLevelLast = 1;
    unsigned recursive = 0;
    const char** filenameTable = (const char**)malloc(argCount * sizeof(const char*));
    unsigned filenameIdx = 0;
    const char* programName = argv[0];
    const char* dictFileName = ((void*)0);
    char* dynNameSpace = ((void*)0);







    if (filenameTable==((void*)0)) { DISPLAY("zstd: %s \n", strerror(errno)); exit(1); }
    displayOut = stderr;


    { size_t pos;
        for (pos = (int)strlen(programName); pos > 0; pos--) { if (programName[pos] == '/') { pos++; break; } }
        programName += pos;
    }


    for(argNb=1; argNb<argCount; argNb++) {
        const char* argument = argv[argNb];
        if(!argument) continue;

        if (nextArgumentIsFile==0) {


            if (!strcmp(argument, "--")) { nextArgumentIsFile=1; continue; }
            if (!strcmp(argument, "--version")) { displayOut=stdout; DISPLAY(WELCOME_MESSAGE); CLEAN_RETURN(0); }
            if (!strcmp(argument, "--help")) { displayOut=stdout; CLEAN_RETURN(usage(programName)); }
            if (!strcmp(argument, "--verbose")) { g_displayLevel++; continue; }
            if (!strcmp(argument, "--quiet")) { g_displayLevel--; continue; }


            if (argument[0]=='-') {
                argument++;

                while (argument[0]!=0) {
                    switch(argument[0])
                    {

                    case 'V': displayOut=stdout; DISPLAY(WELCOME_MESSAGE); CLEAN_RETURN(0);
                    case 'H':
                    case 'h': displayOut=stdout; CLEAN_RETURN(usage(programName));


                    case 'D': nextEntryIsDictionary = 1; argument++; break;


                    case 'v': g_displayLevel++; argument++; break;


                    case 'q': g_displayLevel--; argument++; break;







                    case 'b':

                            argument++;
                            cLevel = readU32FromChar(&argument);
                            break;


                    case 'e':

                            argument++;
                            cLevelLast = readU32FromChar(&argument);
                            break;


                    case 'i':
                        argument++;
                        { U32 const iters = readU32FromChar(&argument);
                            BMK_setNotificationLevel(g_displayLevel);
                            BMK_SetNbIterations(iters);
                        }
                        break;


                    case 'B':
                        argument++;
                        { size_t bSize = readU32FromChar(&argument);
                            if (toupper(*argument)=='K') bSize<<=10, argument++;
                            if (toupper(*argument)=='M') bSize<<=20, argument++;
                            if (toupper(*argument)=='B') argument++;
                            BMK_setNotificationLevel(g_displayLevel);
                            BMK_SetBlockSize(bSize);
                        }
                        break;


                    case 'p': argument++;
                        if ((*argument>='0') && (*argument<='9')) {
                            BMK_setAdditionalParam(readU32FromChar(&argument));
                        } else
                            main_pause=1;
                        break;

                    default : CLEAN_RETURN(badusage(programName));
                    }
                }
                continue;
            }

        }

        if (nextEntryIsDictionary) {
            nextEntryIsDictionary = 0;
            dictFileName = argument;
            continue;
        }


        filenameTable[filenameIdx++] = argument;
    }


    DISPLAYLEVEL(3, WELCOME_MESSAGE);
    BMK_setNotificationLevel(g_displayLevel);
    BMK_benchFiles(filenameTable, filenameIdx, dictFileName, cLevel, cLevelLast);

_end:
    if (main_pause) waitEnter();
    free(dynNameSpace);





        free((void*)filenameTable);
    return operationResult;
}
