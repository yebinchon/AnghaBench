
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive {int dummy; } ;


 int archive_read_support_filter_program (struct archive*,char const*) ;

int
archive_read_support_compression_program(struct archive *a, const char *cmd)
{
 return archive_read_support_filter_program(a, cmd);
}
