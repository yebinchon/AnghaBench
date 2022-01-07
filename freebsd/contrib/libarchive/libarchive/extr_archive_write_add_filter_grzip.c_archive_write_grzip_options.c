
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_write_filter {int dummy; } ;


 int ARCHIVE_WARN ;

__attribute__((used)) static int
archive_write_grzip_options(struct archive_write_filter *f, const char *key,
    const char *value)
{
 (void)f;
 (void)key;
 (void)value;



 return (ARCHIVE_WARN);
}
