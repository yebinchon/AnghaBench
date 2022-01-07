
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_string {char* s; } ;
struct archive_cmdline {int dummy; } ;
typedef scalar_t__ ssize_t ;


 int ARCHIVE_FAILED ;
 int ARCHIVE_OK ;
 int archive_string_free (struct archive_string*) ;
 int archive_string_init (struct archive_string*) ;
 scalar_t__ archive_strlen (struct archive_string*) ;
 int cmdline_add_arg (struct archive_cmdline*,char const*) ;
 int cmdline_set_path (struct archive_cmdline*,char*) ;
 scalar_t__ get_argument (struct archive_string*,char const*) ;
 char* strrchr (char*,char) ;

int
__archive_cmdline_parse(struct archive_cmdline *data, const char *cmd)
{
 struct archive_string as;
 const char *p;
 ssize_t al;
 int r;

 archive_string_init(&as);


 al = get_argument(&as, cmd);
 if (al < 0) {
  r = ARCHIVE_FAILED;
  goto exit_function;
 }
 if (archive_strlen(&as) == 0) {
  r = ARCHIVE_FAILED;
  goto exit_function;
 }
 r = cmdline_set_path(data, as.s);
 if (r != ARCHIVE_OK)
  goto exit_function;
 p = strrchr(as.s, '/');
 if (p == ((void*)0))
  p = as.s;
 else
  p++;
 r = cmdline_add_arg(data, p);
 if (r != ARCHIVE_OK)
  goto exit_function;
 cmd += al;

 for (;;) {
  al = get_argument(&as, cmd);
  if (al < 0) {
   r = ARCHIVE_FAILED;
   goto exit_function;
  }
  if (al == 0)
   break;
  cmd += al;
  if (archive_strlen(&as) == 0 && *cmd == '\0')
   break;
  r = cmdline_add_arg(data, as.s);
  if (r != ARCHIVE_OK)
   goto exit_function;
 }
 r = ARCHIVE_OK;
exit_function:
 archive_string_free(&as);
 return (r);
}
