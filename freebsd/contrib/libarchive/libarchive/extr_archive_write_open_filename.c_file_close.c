
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct write_file_data {scalar_t__ fd; int filename; } ;
struct archive {int dummy; } ;


 int ARCHIVE_OK ;
 int archive_mstring_clean (int *) ;
 int close (scalar_t__) ;
 int free (struct write_file_data*) ;

__attribute__((used)) static int
file_close(struct archive *a, void *client_data)
{
 struct write_file_data *mine = (struct write_file_data *)client_data;

 (void)a;

 if (mine->fd >= 0)
  close(mine->fd);

 archive_mstring_clean(&mine->filename);
 free(mine);
 return (ARCHIVE_OK);
}
