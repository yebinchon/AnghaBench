
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_write {int (* format_options ) (struct archive_write*,char const*,char const*) ;int * format_name; } ;
struct archive {int dummy; } ;


 int ARCHIVE_FAILED ;
 int ARCHIVE_WARN ;
 scalar_t__ strcmp (char const*,int *) ;
 int stub1 (struct archive_write*,char const*,char const*) ;

__attribute__((used)) static int
archive_set_format_option(struct archive *_a, const char *m, const char *o,
    const char *v)
{
 struct archive_write *a = (struct archive_write *)_a;

 if (a->format_name == ((void*)0))
  return (m == ((void*)0))?ARCHIVE_FAILED:ARCHIVE_WARN - 1;


 if (m != ((void*)0) && strcmp(m, a->format_name) != 0)
  return (ARCHIVE_WARN - 1);
 if (a->format_options == ((void*)0))
  return (ARCHIVE_WARN);
 return a->format_options(a, o, v);
}
