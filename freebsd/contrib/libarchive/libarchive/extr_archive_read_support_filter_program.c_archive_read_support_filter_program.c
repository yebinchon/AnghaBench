
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive {int dummy; } ;


 int archive_read_support_filter_program_signature (struct archive*,char const*,int *,int ) ;

int
archive_read_support_filter_program(struct archive *a, const char *cmd)
{
 return (archive_read_support_filter_program_signature(a, cmd, ((void*)0), 0));
}
