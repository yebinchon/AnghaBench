
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct archive {int dummy; } ;


 int archive_write_open_fd (struct archive*,int) ;
 int open_filename (struct archive*,int ,int const*) ;

int
archive_write_open_filename_w(struct archive *a, const wchar_t *filename)
{

 if (filename == ((void*)0) || filename[0] == L'\0')
  return (archive_write_open_fd(a, 1));

 return (open_filename(a, 0, filename));
}
