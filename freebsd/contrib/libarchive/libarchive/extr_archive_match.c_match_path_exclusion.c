
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct match {int pattern; } ;
struct archive_match {int archive; } ;


 scalar_t__ ENOMEM ;
 int PATHMATCH_NO_ANCHOR_END ;
 int PATHMATCH_NO_ANCHOR_START ;
 int archive_mstring_get_mbs (int *,int *,char const**) ;
 int archive_mstring_get_wcs (int *,int *,int const**) ;
 int archive_pathmatch (char const*,char const*,int) ;
 int archive_pathmatch_w (int const*,int const*,int) ;
 scalar_t__ errno ;
 int error_nomem (struct archive_match*) ;

__attribute__((used)) static int
match_path_exclusion(struct archive_match *a, struct match *m,
    int mbs, const void *pn)
{
 int flag = PATHMATCH_NO_ANCHOR_START | PATHMATCH_NO_ANCHOR_END;
 int r;

 if (mbs) {
  const char *p;
  r = archive_mstring_get_mbs(&(a->archive), &(m->pattern), &p);
  if (r == 0)
   return (archive_pathmatch(p, (const char *)pn, flag));
 } else {
  const wchar_t *p;
  r = archive_mstring_get_wcs(&(a->archive), &(m->pattern), &p);
  if (r == 0)
   return (archive_pathmatch_w(p, (const wchar_t *)pn,
    flag));
 }
 if (errno == ENOMEM)
  return (error_nomem(a));
 return (0);
}
