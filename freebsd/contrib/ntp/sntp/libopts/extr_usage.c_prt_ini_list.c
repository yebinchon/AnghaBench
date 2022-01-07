
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int pth_buf ;


 int AG_PATH_MAX ;
 int DIRCH ;
 int NL ;
 char const NUL ;
 scalar_t__ S_ISDIR (int ) ;
 int fprintf (int ,char*,char const*) ;
 int fputc (int ,int ) ;
 int fputs (char const*,int ) ;
 int optionMakePath (char*,int,char const*,char const*) ;
 int option_usage_fp ;
 scalar_t__ stat (char const*,struct stat*) ;
 char* zPathFmt ;
 char const* zPresetIntro ;

__attribute__((used)) static void
prt_ini_list(char const * const * papz, char const * ini_file,
             char const * path_nm)
{
    char pth_buf[AG_PATH_MAX+1];

    fputs(zPresetIntro, option_usage_fp);

    for (;;) {
        char const * path = *(papz++);
        char const * nm_buf = pth_buf;

        if (path == ((void*)0))
            break;




        if (! optionMakePath(pth_buf, (int)sizeof(pth_buf), path, path_nm))
            nm_buf = path;





        else if ((*path == '$')
                 && ((path[1] == '$') || (path[1] == '@')))
            path = nm_buf;





        fprintf(option_usage_fp, zPathFmt, path);
        if (*ini_file != NUL) {
            struct stat sb;





            if ((stat(nm_buf, &sb) == 0) && S_ISDIR(sb.st_mode)) {
                fputc(DIRCH, option_usage_fp);
                fputs(ini_file, option_usage_fp);
            }
        }

        fputc(NL, option_usage_fp);
    }
}
