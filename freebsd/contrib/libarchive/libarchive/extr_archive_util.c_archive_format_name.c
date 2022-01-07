
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive {char const* archive_format_name; } ;



const char *
archive_format_name(struct archive *a)
{
 return (a->archive_format_name);
}
