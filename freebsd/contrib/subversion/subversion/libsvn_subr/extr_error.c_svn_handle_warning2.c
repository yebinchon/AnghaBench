
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int apr_err; int pool; } ;
typedef TYPE_1__ svn_error_t ;
typedef int buf ;
typedef int FILE ;


 int _ (char*) ;
 int fflush (int *) ;
 int svn_cmdline_fprintf (int *,int ,char*,char const*,char const*,...) ;
 int svn_err_best_message (TYPE_1__ const*,char*,int) ;
 int svn_error_clear (int ) ;
 char* svn_error_symbolic_name (int ) ;

void
svn_handle_warning2(FILE *stream, const svn_error_t *err, const char *prefix)
{
  char buf[256];
  svn_error_clear(svn_cmdline_fprintf
                  (stream, err->pool,
                   _("%swarning: W%06d: %s\n"),
                   prefix, err->apr_err,
                   svn_err_best_message(err, buf, sizeof(buf))));
  fflush(stream);
}
