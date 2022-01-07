
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct read_FILE_data {struct read_FILE_data* buffer; } ;
struct archive {int dummy; } ;


 int ARCHIVE_OK ;
 int free (struct read_FILE_data*) ;

__attribute__((used)) static int
file_close(struct archive *a, void *client_data)
{
 struct read_FILE_data *mine = (struct read_FILE_data *)client_data;

 (void)a;
 free(mine->buffer);
 free(mine);
 return (ARCHIVE_OK);
}
