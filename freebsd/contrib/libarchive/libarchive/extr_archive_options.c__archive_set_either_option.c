
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive {int dummy; } ;
typedef int (* option_handler ) (struct archive*,char const*,char const*,char const*) ;


 int ARCHIVE_FAILED ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ARCHIVE_WARN ;

int
_archive_set_either_option(struct archive *a, const char *m, const char *o, const char *v,
    option_handler use_format_option, option_handler use_filter_option)
{
 int r1, r2;

 if (o == ((void*)0) && v == ((void*)0))
  return (ARCHIVE_OK);
 if (o == ((void*)0))
  return (ARCHIVE_FAILED);

 r1 = use_format_option(a, m, o, v);
 if (r1 == ARCHIVE_FATAL)
  return (ARCHIVE_FATAL);

 r2 = use_filter_option(a, m, o, v);
 if (r2 == ARCHIVE_FATAL)
  return (ARCHIVE_FATAL);

 if (r2 == ARCHIVE_WARN - 1)
  return r1;
 return r1 > r2 ? r1 : r2;
}
