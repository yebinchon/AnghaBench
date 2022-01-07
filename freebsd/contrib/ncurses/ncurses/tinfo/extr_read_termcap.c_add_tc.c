
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXPATHS ;
 char NCURSES_PATHSEP ;
 int R_OK ;
 int TR (int ,char*) ;
 int TRACE_DATABASE ;
 scalar_t__ _nc_access (char*,int ) ;
 char* strchr (char*,char) ;

__attribute__((used)) static int
add_tc(char *termpaths[], char *path, int count)
{
    char *save = strchr(path, NCURSES_PATHSEP);
    if (save != 0)
 *save = '\0';
    if (count < MAXPATHS
 && _nc_access(path, R_OK) == 0) {
 termpaths[count++] = path;
 TR(TRACE_DATABASE, ("Adding termpath %s", path));
    }
    termpaths[count] = 0;
    if (save != 0)
 *save = NCURSES_PATHSEP;
    return count;
}
