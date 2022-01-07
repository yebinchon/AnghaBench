
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int z ;
struct TYPE_4__ {char const* pzRcName; int pzProgName; } ;
typedef TYPE_1__ tOptions ;
struct stat {void* st_mode; } ;


 scalar_t__ AGALOC (size_t,char*) ;
 int AGFREE (char const*) ;
 int AG_PATH_MAX ;
 int DIRCH ;
 scalar_t__ ENOENT ;
 char NUL ;
 void* S_IFREG ;
 scalar_t__ S_ISDIR (void*) ;
 int S_ISREG (void*) ;
 scalar_t__ errno ;
 char* find_dir_name (TYPE_1__*,int*) ;
 int fprintf (int ,char*,scalar_t__,...) ;
 int memcpy (char*,char const*,size_t) ;
 int snprintf (char*,size_t,char*,char const*,char const*) ;
 int sprintf (char*,char*,char const*,char*) ;
 scalar_t__ stat (char const*,struct stat*) ;
 int stderr ;
 int strerror (scalar_t__) ;
 int strlen (char const*) ;
 char* strrchr (char const*,int ) ;
 int unlink (char const*) ;
 char* zNoStat ;
 char* zsave_warn ;

__attribute__((used)) static char const *
find_file_name(tOptions * opts, int * p_free_name)
{
    struct stat stBuf;
    int free_dir_name = 0;

    char const * pzDir = find_dir_name(opts, &free_dir_name);
    if (pzDir == ((void*)0))
        return ((void*)0);





    if (stat(pzDir, &stBuf) != 0) do {
        char z[AG_PATH_MAX];
        char * dirchp;





        if (errno != ENOENT) {
        bogus_name:
            fprintf(stderr, zsave_warn, opts->pzProgName);
            fprintf(stderr, zNoStat, errno, strerror(errno), pzDir);
            if (free_dir_name)
                AGFREE(pzDir);
            return ((void*)0);
        }





        dirchp = strrchr(pzDir, DIRCH);
        if (dirchp == ((void*)0)) {
            stBuf.st_mode = S_IFREG;
            break;
        }

        if ((size_t)(dirchp - pzDir) >= sizeof(z))
            goto bogus_name;

        memcpy(z, pzDir, (size_t)(dirchp - pzDir));
        z[dirchp - pzDir] = NUL;

        if ((stat(z, &stBuf) != 0) || ! S_ISDIR(stBuf.st_mode))
            goto bogus_name;
        stBuf.st_mode = S_IFREG;
    } while (0);





    if (S_ISDIR(stBuf.st_mode)) {
        size_t sz = strlen(pzDir) + strlen(opts->pzRcName) + 2;

        {
            char * pzPath = (char *)AGALOC(sz, "file name");



            sprintf(pzPath, "%s/%s", pzDir, opts->pzRcName);

            if (free_dir_name)
                AGFREE(pzDir);
            pzDir = pzPath;
            free_dir_name = 1;
        }





        if (stat(pzDir, &stBuf) != 0) {
            if (errno != ENOENT) {
                fprintf(stderr, zsave_warn, opts->pzProgName);
                fprintf(stderr, zNoStat, errno, strerror(errno),
                        pzDir);
                AGFREE(pzDir);
                return ((void*)0);
            }




            stBuf.st_mode = S_IFREG;
        }
    }





    if (! S_ISREG(stBuf.st_mode)) {
        fprintf(stderr, zsave_warn, opts->pzProgName, pzDir);
        if (free_dir_name)
            AGFREE(pzDir);
        return ((void*)0);
    }




    unlink(pzDir);
    *p_free_name = free_dir_name;
    return pzDir;
}
