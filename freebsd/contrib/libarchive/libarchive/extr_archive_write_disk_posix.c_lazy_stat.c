
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_write_disk {scalar_t__ fd; int archive; int st; int * pst; int name; } ;


 int ARCHIVE_OK ;
 int ARCHIVE_WARN ;
 int archive_set_error (int *,int ,char*) ;
 int errno ;
 scalar_t__ fstat (scalar_t__,int *) ;
 scalar_t__ lstat (int ,int *) ;

__attribute__((used)) static int
lazy_stat(struct archive_write_disk *a)
{
 if (a->pst != ((void*)0)) {

  return (ARCHIVE_OK);
 }
 if (lstat(a->name, &a->st) == 0) {
  a->pst = &a->st;
  return (ARCHIVE_OK);
 }
 archive_set_error(&a->archive, errno, "Couldn't stat file");
 return (ARCHIVE_WARN);
}
