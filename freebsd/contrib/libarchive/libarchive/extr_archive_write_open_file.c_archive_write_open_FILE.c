
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct write_FILE_data {int * f; } ;
struct archive {int dummy; } ;
typedef int FILE ;


 int ARCHIVE_FATAL ;
 int ENOMEM ;
 int archive_set_error (struct archive*,int ,char*) ;
 int archive_write_open (struct archive*,struct write_FILE_data*,int ,int ,int ) ;
 int file_close ;
 int file_open ;
 int file_write ;
 scalar_t__ malloc (int) ;

int
archive_write_open_FILE(struct archive *a, FILE *f)
{
 struct write_FILE_data *mine;

 mine = (struct write_FILE_data *)malloc(sizeof(*mine));
 if (mine == ((void*)0)) {
  archive_set_error(a, ENOMEM, "No memory");
  return (ARCHIVE_FATAL);
 }
 mine->f = f;
 return (archive_write_open(a, mine,
      file_open, file_write, file_close));
}
