
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {int d_name; } ;
typedef int DIR ;


 int AG_PATH_MAX ;
 int R_OK ;
 int W_OK ;
 int X_OK ;
 scalar_t__ access (char*,int) ;
 char* canonicalize_pathname (char*) ;
 int closedir (int *) ;
 char* extract_colon_unit (char*,char const*,int*) ;
 int free (char*) ;
 char* make_absolute (char const*,char*) ;
 int * opendir (char*) ;
 struct dirent* readdir (int *) ;
 scalar_t__ strchr (char const*,char) ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static char *
pathfind( char const * path,
          char const * fname,
          char const * mode )
{
    int p_index = 0;
    int mode_bits = 0;
    char * res_path = ((void*)0);
    char zPath[ AG_PATH_MAX + 1 ];

    if (strchr( mode, 'r' )) mode_bits |= R_OK;
    if (strchr( mode, 'w' )) mode_bits |= W_OK;
    if (strchr( mode, 'x' )) mode_bits |= X_OK;




    for (;;) {
        DIR * dirP;
        char * colon_unit = extract_colon_unit( zPath, path, &p_index );

        if (colon_unit == ((void*)0))
            break;

        dirP = opendir( colon_unit );




        if (dirP == ((void*)0))
            continue;

        for (;;) {
            struct dirent *entP = readdir( dirP );

            if (entP == (struct dirent *)((void*)0))
                break;




            if (strcmp(entP->d_name, fname) == 0) {
                char * abs_name = make_absolute(fname, colon_unit);




                if (access(abs_name, mode_bits) >= 0) {



                    res_path = canonicalize_pathname(abs_name);
                }

                free(abs_name);
                break;
            }
        }

        closedir( dirP );

        if (res_path != ((void*)0))
            break;
    }

    return res_path;
}
