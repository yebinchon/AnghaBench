
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive {int dummy; } ;


 int ARCHIVE_READ_MAGIC ;
 int _archive_set_option (struct archive*,char const*,char const*,char const*,int ,char*,int ) ;
 int archive_set_format_option ;

int
archive_read_set_format_option(struct archive *a, const char *m, const char *o,
    const char *v)
{
 return _archive_set_option(a, m, o, v,
     ARCHIVE_READ_MAGIC, "archive_read_set_format_option",
     archive_set_format_option);
}
