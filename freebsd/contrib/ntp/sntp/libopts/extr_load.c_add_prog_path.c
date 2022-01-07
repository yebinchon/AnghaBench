
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AGFREE (char const*) ;


 int getenv (char*) ;
 int memcpy (char*,char const*,size_t) ;
 char* pathfind (int ,char const*,char*) ;
 int * strchr (char const*,int const) ;
 int strcpy (char*,char const*) ;
 unsigned int strlen (char const*) ;
 char* strrchr (char const*,int const) ;

__attribute__((used)) static bool
add_prog_path(char * buf, int b_sz, char const * fname, char const * prg_path)
{
    char const * path;
    char const * pz;
    int skip = 2;

    switch (fname[2]) {
    case 129:
        skip = 3;
    case 128:
        break;
    default:
        return 0;
    }






    if (strchr(prg_path, 129) != ((void*)0))
        path = prg_path;
    else {
        path = pathfind(getenv("PATH"), prg_path, "rx");

        if (path == ((void*)0))
            return 0;
    }

    pz = strrchr(path, 129);





    if (pz == ((void*)0))
        return 0;

    fname += skip;





    if ((unsigned)(pz - path) + 1 + strlen(fname) >= (unsigned)b_sz)
        return 0;

    memcpy(buf, path, (size_t)((pz - path)+1));
    strcpy(buf + (pz - path) + 1, fname);





    if (path != prg_path)
        AGFREE(path);
    return 1;
}
