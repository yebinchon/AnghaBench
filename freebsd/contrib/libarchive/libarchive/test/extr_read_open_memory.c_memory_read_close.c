
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct read_memory_data {struct read_memory_data* copy_buff; } ;
struct archive {int dummy; } ;


 int ARCHIVE_OK ;
 int free (struct read_memory_data*) ;

__attribute__((used)) static int
memory_read_close(struct archive *a, void *client_data)
{
 struct read_memory_data *mine = (struct read_memory_data *)client_data;
 (void)a;
 if (mine != ((void*)0))
  free(mine->copy_buff);
 free(mine);
 return (ARCHIVE_OK);
}
