
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive {scalar_t__ archive_error_number; int * error; int error_string; } ;


 int archive_string_empty (int *) ;

void
archive_clear_error(struct archive *a)
{
 archive_string_empty(&a->error_string);
 a->error = ((void*)0);
 a->archive_error_number = 0;
}
