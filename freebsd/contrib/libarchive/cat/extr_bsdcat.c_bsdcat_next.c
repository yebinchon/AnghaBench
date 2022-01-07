
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ARCHIVE_OK ;
 int * a ;
 scalar_t__ archive_read_close (int *) ;
 int archive_read_free (int *) ;
 int * archive_read_new () ;
 int archive_read_support_filter_all (int *) ;
 int archive_read_support_format_empty (int *) ;
 int archive_read_support_format_raw (int *) ;
 int bsdcat_print_error () ;

void
bsdcat_next(void)
{
 if (a != ((void*)0)) {
  if (archive_read_close(a) != ARCHIVE_OK)
   bsdcat_print_error();
  archive_read_free(a);
 }

 a = archive_read_new();
 archive_read_support_filter_all(a);
 archive_read_support_format_empty(a);
 archive_read_support_format_raw(a);
}
