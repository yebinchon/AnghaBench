
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive {int dummy; } ;
typedef int (* option_handler ) (struct archive*,char const*,char const*,char const*) ;


 int ARCHIVE_ERRNO_MISC ;
 int ARCHIVE_FAILED ;
 int ARCHIVE_OK ;
 int ARCHIVE_STATE_NEW ;
 int ARCHIVE_WARN ;
 int archive_check_magic (struct archive*,int,int ,char const*) ;
 int archive_set_error (struct archive*,int ,char*,...) ;

int
_archive_set_option(struct archive *a,
    const char *m, const char *o, const char *v,
    int magic, const char *fn, option_handler use_option)
{
 const char *mp, *op, *vp;
 int r;

 archive_check_magic(a, magic, ARCHIVE_STATE_NEW, fn);

 mp = (m != ((void*)0) && m[0] != '\0') ? m : ((void*)0);
 op = (o != ((void*)0) && o[0] != '\0') ? o : ((void*)0);
 vp = (v != ((void*)0) && v[0] != '\0') ? v : ((void*)0);

 if (op == ((void*)0) && vp == ((void*)0))
  return (ARCHIVE_OK);
 if (op == ((void*)0)) {
  archive_set_error(a, ARCHIVE_ERRNO_MISC, "Empty option");
  return (ARCHIVE_FAILED);
 }

 r = use_option(a, mp, op, vp);
 if (r == ARCHIVE_WARN - 1) {
  archive_set_error(a, ARCHIVE_ERRNO_MISC,
      "Unknown module name: `%s'", mp);
  return (ARCHIVE_FAILED);
 }
 if (r == ARCHIVE_WARN) {
  archive_set_error(a, ARCHIVE_ERRNO_MISC,
      "Undefined option: `%s%s%s%s%s%s'",
      vp?"":"!", mp?mp:"", mp?":":"", op, vp?"=":"", vp?vp:"");
  return (ARCHIVE_FAILED);
 }
 return (r);
}
