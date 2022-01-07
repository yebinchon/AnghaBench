
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
struct winsize {int ws_col; } ;
struct TYPE_4__ {int X; } ;
struct TYPE_5__ {TYPE_1__ dwSize; } ;
typedef TYPE_2__ CONSOLE_SCREEN_BUFFER_INFO ;


 scalar_t__ GetConsoleScreenBufferInfo (int ,TYPE_2__*) ;
 int GetStdHandle (int ) ;
 int O_RDONLY ;
 int STD_OUTPUT_HANDLE ;
 int TIOCGWINSZ ;
 int close (int) ;
 char* getenv (char*) ;
 int ioctl (int,int ,struct winsize*) ;
 int open (char*,int ,int ) ;
 int * svn_cstring_atoi (int*,char*) ;
 int svn_error_clear (int *) ;

__attribute__((used)) static int
get_term_width(void)
{
  char *columns_env;
  columns_env = getenv("COLUMNS");
  if (columns_env)
    {
      svn_error_t *err;
      int cols;

      err = svn_cstring_atoi(&cols, columns_env);
      if (err)
        {
          svn_error_clear(err);
          return 80;
        }

      if (cols < 80)
        return 80;
      return cols;
    }
  else
    return 80;
}
