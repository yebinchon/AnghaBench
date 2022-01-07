
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct url_stat {int size; int mtime; int atime; } ;
struct stat {int st_size; int st_mtime; int st_atime; } ;


 int fetch_syserr () ;
 int stat (char const*,struct stat*) ;

__attribute__((used)) static int
fetch_stat_file(const char *fn, struct url_stat *us)
{
 struct stat sb;

 us->size = -1;
 us->atime = us->mtime = 0;
 if (stat(fn, &sb) == -1) {
  fetch_syserr();
  return (-1);
 }
 us->size = sb.st_size;
 us->atime = sb.st_atime;
 us->mtime = sb.st_mtime;
 return (0);
}
