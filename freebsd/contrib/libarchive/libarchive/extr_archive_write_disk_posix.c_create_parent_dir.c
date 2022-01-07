
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_write_disk {int dummy; } ;


 int ARCHIVE_OK ;
 int create_dir (struct archive_write_disk*,char*) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static int
create_parent_dir(struct archive_write_disk *a, char *path)
{
 char *slash;
 int r;


 slash = strrchr(path, '/');
 if (slash == ((void*)0))
  return (ARCHIVE_OK);
 *slash = '\0';
 r = create_dir(a, path);
 *slash = '/';
 return (r);
}
