
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_write_filter {int (* options ) (struct archive_write_filter*,char const*,char const*) ;int name; struct archive_write_filter* next_filter; } ;
struct archive_write {struct archive_write_filter* filter_first; } ;
struct archive {int dummy; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ARCHIVE_WARN ;
 scalar_t__ strcmp (int ,char const*) ;
 int stub1 (struct archive_write_filter*,char const*,char const*) ;

__attribute__((used)) static int
archive_set_filter_option(struct archive *_a, const char *m, const char *o,
    const char *v)
{
 struct archive_write *a = (struct archive_write *)_a;
 struct archive_write_filter *filter;
 int r, rv = ARCHIVE_WARN;

 for (filter = a->filter_first; filter != ((void*)0); filter = filter->next_filter) {
  if (filter->options == ((void*)0))
   continue;
  if (m != ((void*)0) && strcmp(filter->name, m) != 0)
   continue;

  r = filter->options(filter, o, v);

  if (r == ARCHIVE_FATAL)
   return (ARCHIVE_FATAL);

  if (m != ((void*)0))
   return (r);

  if (r == ARCHIVE_OK)
   rv = ARCHIVE_OK;
 }


 if (rv == ARCHIVE_WARN && m != ((void*)0))
  rv = ARCHIVE_WARN - 1;
 return (rv);
}
