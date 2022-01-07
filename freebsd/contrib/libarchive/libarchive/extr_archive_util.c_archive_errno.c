
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive {int archive_error_number; } ;



int
archive_errno(struct archive *a)
{
 return (a->archive_error_number);
}
