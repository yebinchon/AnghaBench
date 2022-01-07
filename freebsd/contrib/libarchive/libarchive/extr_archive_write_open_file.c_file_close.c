
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct write_FILE_data {int dummy; } ;
struct archive {int dummy; } ;


 int ARCHIVE_OK ;
 int free (struct write_FILE_data*) ;

__attribute__((used)) static int
file_close(struct archive *a, void *client_data)
{
 struct write_FILE_data *mine = client_data;

 (void)a;
 free(mine);
 return (ARCHIVE_OK);
}
