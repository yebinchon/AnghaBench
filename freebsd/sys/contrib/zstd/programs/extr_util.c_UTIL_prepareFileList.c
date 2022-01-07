
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {char const* d_name; } ;
typedef int ptrdiff_t ;
typedef int DIR ;


 int LIST_SIZE_INCREASE ;
 int UTIL_DISPLAYLEVEL (int,char*,char const*,...) ;
 scalar_t__ UTIL_isDirectory (char*) ;
 scalar_t__ UTIL_isLink (char*) ;
 scalar_t__ UTIL_realloc (char*,size_t) ;
 int assert (int) ;
 int closedir (int *) ;
 scalar_t__ errno ;
 int free (char*) ;
 scalar_t__ malloc (size_t) ;
 int memcpy (char*,char const*,size_t) ;
 int * opendir (char const*) ;
 struct dirent* readdir (int *) ;
 scalar_t__ strcmp (char const*,char*) ;
 int strerror (scalar_t__) ;
 size_t strlen (char const*) ;

int UTIL_prepareFileList(const char *dirName, char** bufStart, size_t* pos, char** bufEnd, int followLinks)
{
    DIR *dir;
    struct dirent *entry;
    char* path;
    size_t dirLength, fnameLength, pathLength;
    int nbFiles = 0;

    if (!(dir = opendir(dirName))) {
        UTIL_DISPLAYLEVEL(1, "Cannot open directory '%s': %s\n", dirName, strerror(errno));
        return 0;
    }

    dirLength = strlen(dirName);
    errno = 0;
    while ((entry = readdir(dir)) != ((void*)0)) {
        if (strcmp (entry->d_name, "..") == 0 ||
            strcmp (entry->d_name, ".") == 0) continue;
        fnameLength = strlen(entry->d_name);
        path = (char*) malloc(dirLength + fnameLength + 2);
        if (!path) { closedir(dir); return 0; }
        memcpy(path, dirName, dirLength);

        path[dirLength] = '/';
        memcpy(path+dirLength+1, entry->d_name, fnameLength);
        pathLength = dirLength+1+fnameLength;
        path[pathLength] = 0;

        if (!followLinks && UTIL_isLink(path)) {
            UTIL_DISPLAYLEVEL(2, "Warning : %s is a symbolic link, ignoring\n", path);
            free(path);
            continue;
        }

        if (UTIL_isDirectory(path)) {
            nbFiles += UTIL_prepareFileList(path, bufStart, pos, bufEnd, followLinks);
            if (*bufStart == ((void*)0)) { free(path); closedir(dir); return 0; }
        } else {
            if (*bufStart + *pos + pathLength >= *bufEnd) {
                ptrdiff_t newListSize = (*bufEnd - *bufStart) + LIST_SIZE_INCREASE;
                assert(newListSize >= 0);
                *bufStart = (char*)UTIL_realloc(*bufStart, (size_t)newListSize);
                *bufEnd = *bufStart + newListSize;
                if (*bufStart == ((void*)0)) { free(path); closedir(dir); return 0; }
            }
            if (*bufStart + *pos + pathLength < *bufEnd) {
                memcpy(*bufStart + *pos, path, pathLength + 1);
                *pos += pathLength + 1;
                nbFiles++;
            }
        }
        free(path);
        errno = 0;
    }

    if (errno != 0) {
        UTIL_DISPLAYLEVEL(1, "readdir(%s) error: %s\n", dirName, strerror(errno));
        free(*bufStart);
        *bufStart = ((void*)0);
    }
    closedir(dir);
    return nbFiles;
}
