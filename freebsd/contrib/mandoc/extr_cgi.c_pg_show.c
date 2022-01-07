
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct req {int dummy; } ;


 int FOCUS_NONE ;
 int chdir (char*) ;
 int free (char*) ;
 char* mandoc_strndup (char const*,int) ;
 int pg_error_badrequest (char*) ;
 int pg_error_internal () ;
 int resp_begin_html (int,int *,char const*) ;
 int resp_end_html () ;
 int resp_searchform (struct req*,int ) ;
 int resp_show (struct req*,char const*) ;
 char* strchr (char const*,char) ;
 int validate_filename (char const*) ;
 int validate_manpath (struct req*,char*) ;
 int warn (char*,char*) ;

__attribute__((used)) static void
pg_show(struct req *req, const char *fullpath)
{
 char *manpath;
 const char *file;

 if ((file = strchr(fullpath, '/')) == ((void*)0)) {
  pg_error_badrequest(
      "You did not specify a page to show.");
  return;
 }
 manpath = mandoc_strndup(fullpath, file - fullpath);
 file++;

 if ( ! validate_manpath(req, manpath)) {
  pg_error_badrequest(
      "You specified an invalid manpath.");
  free(manpath);
  return;
 }







 if (chdir(manpath) == -1) {
  warn("chdir %s", manpath);
  pg_error_internal();
  free(manpath);
  return;
 }
 free(manpath);

 if ( ! validate_filename(file)) {
  pg_error_badrequest(
      "You specified an invalid manual file.");
  return;
 }

 resp_begin_html(200, ((void*)0), file);
 resp_searchform(req, FOCUS_NONE);
 resp_show(req, file);
 resp_end_html();
}
