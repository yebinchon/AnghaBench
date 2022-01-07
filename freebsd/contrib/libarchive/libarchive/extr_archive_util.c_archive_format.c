
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive {int archive_format; } ;



int
archive_format(struct archive *a)
{
 return (a->archive_format);
}
