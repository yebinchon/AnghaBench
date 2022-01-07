
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive {int dummy; } ;


 int _archive_set_either_option (struct archive*,char const*,char const*,char const*,int ,int ) ;
 int archive_set_filter_option ;
 int archive_set_format_option ;

__attribute__((used)) static int
archive_set_option(struct archive *a, const char *m, const char *o,
    const char *v)
{
 return _archive_set_either_option(a, m, o, v,
     archive_set_format_option,
     archive_set_filter_option);
}
