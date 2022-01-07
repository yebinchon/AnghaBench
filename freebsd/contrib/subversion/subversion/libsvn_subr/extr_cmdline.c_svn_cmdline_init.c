
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
struct stat {int dummy; } ;
typedef int prefix_buf ;
typedef int buf ;
typedef scalar_t__ apr_status_t ;
typedef int apr_pool_t ;
typedef int HANDLE ;
typedef int FILE ;
typedef int DWORD ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int FALSE ;
 scalar_t__ GetConsoleCP () ;
 scalar_t__ GetConsoleMode (int ,int *) ;
 scalar_t__ GetConsoleOutputCP () ;
 int GetStdHandle (int ) ;
 int LC_ALL ;
 int LC_CTYPE ;
 int O_RDONLY ;
 int O_WRONLY ;
 int STDERR_FILENO ;
 int STDOUT_FILENO ;
 int STD_ERROR_HANDLE ;
 int STD_OUTPUT_HANDLE ;
 int SetUnhandledExceptionFilter (int ) ;
 void* TRUE ;
 int _CRTDBG_FILE_STDERR ;
 int _CRTDBG_MODE_DEBUG ;
 int _CRTDBG_MODE_FILE ;
 int _CRT_ASSERT ;
 int _CRT_ERROR ;
 int _CRT_WARN ;
 int _CrtSetReportFile (int ,int ) ;
 int _CrtSetReportMode (int ,int) ;
 int _IOLBF ;
 int _IONBF ;
 int _OUT_TO_STDERR ;
 scalar_t__ _isatty (int ) ;
 int _set_error_mode (int ) ;
 scalar_t__ apr_initialize () ;
 int apr_snprintf (char*,int,char*,unsigned int) ;
 int apr_strerror (scalar_t__,char*,int) ;
 int apr_terminate ;
 scalar_t__ atexit (int ) ;
 int fprintf (int *,char*,char const*,...) ;
 int fstat (int,struct stat*) ;
 char* getenv (char const*) ;
 char* input_encoding ;
 int open (char*,int ) ;
 char* output_encoding ;
 int setlocale (int ,char*) ;
 int setvbuf (int *,int *,int ,int ) ;
 void* shortcut_stderr_to_console ;
 void* shortcut_stdout_to_console ;
 int * stdout ;
 int strcat (char*,char*) ;
 int strncpy (char*,char const*,int) ;
 int svn__unhandled_exception_filter ;
 int * svn_dso_initialize2 () ;
 int svn_error_clear (int *) ;
 int svn_handle_error2 (int *,int *,void*,char*) ;
 int * svn_nls_init () ;
 int * svn_pool_create (int *) ;
 int svn_utf_initialize2 (int ,int *) ;

int
svn_cmdline_init(const char *progname, FILE *error_stream)
{
  apr_status_t status;
  apr_pool_t *pool;
  svn_error_t *err;
  char prefix_buf[64];


  {
    struct stat st;






    if ((fstat(0, &st) == -1 && open("/dev/null", O_RDONLY) == -1) ||
        (fstat(1, &st) == -1 && open("/dev/null", O_WRONLY) == -1) ||
        (fstat(2, &st) == -1 && open("/dev/null", O_WRONLY) == -1))
      {
        if (error_stream)
          fprintf(error_stream, "%s: error: cannot open '/dev/null'\n",
                  progname);
        return EXIT_FAILURE;
      }
  }





  if (error_stream)
    setvbuf(error_stream, ((void*)0), _IONBF, 0);

  setvbuf(stdout, ((void*)0), _IOLBF, 0);
  if (!setlocale(LC_ALL, "")
      && !setlocale(LC_CTYPE, ""))
    {
      if (error_stream)
        {
          const char *env_vars[] = { "LC_ALL", "LC_CTYPE", "LANG", ((void*)0) };
          const char **env_var = &env_vars[0], *env_val = ((void*)0);
          while (*env_var)
            {
              env_val = getenv(*env_var);
              if (env_val && env_val[0])
                break;
              ++env_var;
            }

          if (!*env_var)
            {

              --env_var;
              env_val = "not set";
            }

          fprintf(error_stream,
                  "%s: warning: cannot set LC_CTYPE locale\n"
                  "%s: warning: environment variable %s is %s\n"
                  "%s: warning: please check that your locale name is correct\n",
                  progname, progname, *env_var, env_val, progname);
        }
    }



  status = apr_initialize();
  if (status)
    {
      if (error_stream)
        {
          char buf[1024];
          apr_strerror(status, buf, sizeof(buf) - 1);
          fprintf(error_stream,
                  "%s: error: cannot initialize APR: %s\n",
                  progname, buf);
        }
      return EXIT_FAILURE;
    }

  strncpy(prefix_buf, progname, sizeof(prefix_buf) - 3);
  prefix_buf[sizeof(prefix_buf) - 3] = '\0';
  strcat(prefix_buf, ": ");




  if ((err = svn_dso_initialize2()))
    {
      if (error_stream)
        svn_handle_error2(err, error_stream, TRUE, prefix_buf);

      svn_error_clear(err);
      return EXIT_FAILURE;
    }

  if (0 > atexit(apr_terminate))
    {
      if (error_stream)
        fprintf(error_stream,
                "%s: error: atexit registration failed\n",
                progname);
      return EXIT_FAILURE;
    }



  pool = svn_pool_create(((void*)0));
  svn_utf_initialize2(FALSE, pool);

  if ((err = svn_nls_init()))
    {
      if (error_stream)
        svn_handle_error2(err, error_stream, TRUE, prefix_buf);

      svn_error_clear(err);
      return EXIT_FAILURE;
    }
  return EXIT_SUCCESS;
}
