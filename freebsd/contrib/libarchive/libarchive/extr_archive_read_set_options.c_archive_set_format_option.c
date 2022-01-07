
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read {struct archive_format_descriptor* format; struct archive_format_descriptor* formats; } ;
struct archive_format_descriptor {int (* options ) (struct archive_read*,char const*,char const*) ;int * name; } ;
struct archive {int dummy; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ARCHIVE_WARN ;
 scalar_t__ strcmp (int *,char const*) ;
 int stub1 (struct archive_read*,char const*,char const*) ;

__attribute__((used)) static int
archive_set_format_option(struct archive *_a, const char *m, const char *o,
    const char *v)
{
 struct archive_read *a = (struct archive_read *)_a;
 size_t i;
 int r, rv = ARCHIVE_WARN, matched_modules = 0;

 for (i = 0; i < sizeof(a->formats)/sizeof(a->formats[0]); i++) {
  struct archive_format_descriptor *format = &a->formats[i];

  if (format->options == ((void*)0) || format->name == ((void*)0))

   continue;
  if (m != ((void*)0)) {
   if (strcmp(format->name, m) != 0)
    continue;
   ++matched_modules;
  }

  a->format = format;
  r = format->options(a, o, v);
  a->format = ((void*)0);

  if (r == ARCHIVE_FATAL)
   return (ARCHIVE_FATAL);

  if (r == ARCHIVE_OK)
   rv = ARCHIVE_OK;
 }


 if (m != ((void*)0) && matched_modules == 0)
  return ARCHIVE_WARN - 1;
 return (rv);
}
