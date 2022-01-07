
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARCHIVE_EOF ;
 int ARCHIVE_OK ;
 int BYTES_PER_BLOCK ;
 int * a ;
 int ae ;
 int archive_read_close (int *) ;
 int archive_read_data_into_fd (int *,int) ;
 int archive_read_free (int *) ;
 int archive_read_next_header (int *,int *) ;
 int archive_read_open_filename (int *,char const*,int ) ;
 int bsdcat_print_error () ;

void
bsdcat_read_to_stdout(const char* filename)
{
 int r;

 if (archive_read_open_filename(a, filename, BYTES_PER_BLOCK)
     != ARCHIVE_OK)
  bsdcat_print_error();
 else if (r = archive_read_next_header(a, &ae),
   r != ARCHIVE_OK && r != ARCHIVE_EOF)
  bsdcat_print_error();
 else if (r == ARCHIVE_EOF)

  ;
 else if (archive_read_data_into_fd(a, 1) != ARCHIVE_OK)
  bsdcat_print_error();
 if (archive_read_close(a) != ARCHIVE_OK)
  bsdcat_print_error();
 archive_read_free(a);
 a = ((void*)0);
}
