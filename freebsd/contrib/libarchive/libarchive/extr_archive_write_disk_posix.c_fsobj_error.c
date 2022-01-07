
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_string {int dummy; } ;


 int archive_string_sprintf (struct archive_string*,char*,char const*,char const*) ;

__attribute__((used)) static void
fsobj_error(int *a_eno, struct archive_string *a_estr,
    int err, const char *errstr, const char *path)
{
 if (a_eno)
  *a_eno = err;
 if (a_estr)
  archive_string_sprintf(a_estr, "%s%s", errstr, path);
}
