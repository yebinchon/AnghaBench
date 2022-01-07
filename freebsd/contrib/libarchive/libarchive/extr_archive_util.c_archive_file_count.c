
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive {int file_count; } ;



int
archive_file_count(struct archive *a)
{
 return (a->file_count);
}
