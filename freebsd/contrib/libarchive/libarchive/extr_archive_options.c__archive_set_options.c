
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive {int dummy; } ;
typedef int (* option_handler ) (struct archive*,char const*,char const*,char const*) ;


 int ARCHIVE_ERRNO_MISC ;
 int ARCHIVE_FAILED ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ARCHIVE_STATE_NEW ;
 int ARCHIVE_WARN ;
 int ENOMEM ;
 int archive_check_magic (struct archive*,int,int ,char const*) ;
 int archive_set_error (struct archive*,int ,char*,...) ;
 int free (char*) ;
 int parse_option (char const**,char const**,char const**,char const**) ;
 scalar_t__ strcmp (char*,char const*) ;
 char* strdup (char const*) ;

int
_archive_set_options(struct archive *a, const char *options,
    int magic, const char *fn, option_handler use_option)
{
 int allok = 1, anyok = 0, ignore_mod_err = 0, r;
 char *data;
 const char *s, *mod, *opt, *val;

 archive_check_magic(a, magic, ARCHIVE_STATE_NEW, fn);

 if (options == ((void*)0) || options[0] == '\0')
  return ARCHIVE_OK;

 if ((data = strdup(options)) == ((void*)0)) {
  archive_set_error(a,
      ENOMEM, "Out of memory adding file to list");
  return (ARCHIVE_FATAL);
 }
 s = (const char *)data;

 do {
  mod = opt = val = ((void*)0);

  parse_option(&s, &mod, &opt, &val);
  if (mod == ((void*)0) && opt != ((void*)0) &&
      strcmp("__ignore_wrong_module_name__", opt) == 0) {

   if (val != ((void*)0)) {
    ignore_mod_err = 1;
    anyok = 1;
   }
   continue;
  }

  r = use_option(a, mod, opt, val);
  if (r == ARCHIVE_FATAL) {
   free(data);
   return (ARCHIVE_FATAL);
  }
  if (r == ARCHIVE_FAILED && mod != ((void*)0)) {
   free(data);
   return (ARCHIVE_FAILED);
  }
  if (r == ARCHIVE_WARN - 1) {
   if (ignore_mod_err)
    continue;

   archive_set_error(a, ARCHIVE_ERRNO_MISC,
       "Unknown module name: `%s'", mod);
   free(data);
   return (ARCHIVE_FAILED);
  }
  if (r == ARCHIVE_WARN) {

   archive_set_error(a, ARCHIVE_ERRNO_MISC,
       "Undefined option: `%s%s%s'",
       mod?mod:"", mod?":":"", opt);
   free(data);
   return (ARCHIVE_FAILED);
  }
  if (r == ARCHIVE_OK)
   anyok = 1;
  else
   allok = 0;
 } while (s != ((void*)0));

 free(data);
 return allok ? ARCHIVE_OK : anyok ? ARCHIVE_WARN : ARCHIVE_FAILED;
}
