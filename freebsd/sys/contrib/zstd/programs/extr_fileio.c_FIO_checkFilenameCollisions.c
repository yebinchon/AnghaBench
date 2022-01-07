
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DISPLAY (char*,...) ;
 int UTIL_compareStr ;
 int free (void*) ;
 scalar_t__ malloc (int) ;
 int qsort (void*,unsigned int,int,int ) ;
 scalar_t__ strcmp (char const*,char const*) ;
 char* strrchr (char const*,char const) ;

int FIO_checkFilenameCollisions(const char** filenameTable, unsigned nbFiles) {
    const char **filenameTableSorted, *c, *prevElem, *filename;
    unsigned u;




    c = "/";


    filenameTableSorted = (const char**) malloc(sizeof(char*) * nbFiles);
    if (!filenameTableSorted) {
        DISPLAY("Unable to malloc new str array, not checking for name collisions\n");
        return 1;
    }

    for (u = 0; u < nbFiles; ++u) {
        filename = strrchr(filenameTable[u], c[0]);
        if (filename == ((void*)0)) {
            filenameTableSorted[u] = filenameTable[u];
        } else {
            filenameTableSorted[u] = filename+1;
        }
    }

    qsort((void*)filenameTableSorted, nbFiles, sizeof(char*), UTIL_compareStr);
    prevElem = filenameTableSorted[0];
    for (u = 1; u < nbFiles; ++u) {
        if (strcmp(prevElem, filenameTableSorted[u]) == 0) {
            DISPLAY("WARNING: Two files have same filename: %s\n", prevElem);
        }
        prevElem = filenameTableSorted[u];
    }

    free((void*)filenameTableSorted);
    return 0;
}
