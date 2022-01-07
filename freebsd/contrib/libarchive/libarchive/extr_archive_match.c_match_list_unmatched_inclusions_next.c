
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char wchar_t ;
struct match_list {int unmatched_eof; scalar_t__ unmatched_count; struct match* unmatched_next; struct match* first; } ;
struct match {struct match* next; int pattern; scalar_t__ matches; } ;
struct archive_match {int archive; } ;


 int ARCHIVE_EOF ;
 int ARCHIVE_OK ;
 scalar_t__ ENOMEM ;
 int archive_mstring_get_mbs (int *,int *,char const**) ;
 int archive_mstring_get_wcs (int *,int *,char const**) ;
 scalar_t__ errno ;
 int error_nomem (struct archive_match*) ;

__attribute__((used)) static int
match_list_unmatched_inclusions_next(struct archive_match *a,
    struct match_list *list, int mbs, const void **vp)
{
 struct match *m;

 *vp = ((void*)0);
 if (list->unmatched_eof) {
  list->unmatched_eof = 0;
  return (ARCHIVE_EOF);
 }
 if (list->unmatched_next == ((void*)0)) {
  if (list->unmatched_count == 0)
   return (ARCHIVE_EOF);
  list->unmatched_next = list->first;
 }

 for (m = list->unmatched_next; m != ((void*)0); m = m->next) {
  int r;

  if (m->matches)
   continue;
  if (mbs) {
   const char *p;
   r = archive_mstring_get_mbs(&(a->archive),
    &(m->pattern), &p);
   if (r < 0 && errno == ENOMEM)
    return (error_nomem(a));
   if (p == ((void*)0))
    p = "";
   *vp = p;
  } else {
   const wchar_t *p;
   r = archive_mstring_get_wcs(&(a->archive),
    &(m->pattern), &p);
   if (r < 0 && errno == ENOMEM)
    return (error_nomem(a));
   if (p == ((void*)0))
    p = L"";
   *vp = p;
  }
  list->unmatched_next = m->next;
  if (list->unmatched_next == ((void*)0))

   list->unmatched_eof = 1;
  return (ARCHIVE_OK);
 }
 list->unmatched_next = ((void*)0);
 return (ARCHIVE_EOF);
}
