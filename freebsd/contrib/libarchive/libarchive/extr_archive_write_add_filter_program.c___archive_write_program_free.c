
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_write_program_data {struct archive_write_program_data* child_buf; struct archive_write_program_data* program_name; scalar_t__ child; } ;


 int ARCHIVE_OK ;
 int CloseHandle (scalar_t__) ;
 int free (struct archive_write_program_data*) ;

int
__archive_write_program_free(struct archive_write_program_data *data)
{

 if (data) {




  free(data->program_name);
  free(data->child_buf);
  free(data);
 }
 return (ARCHIVE_OK);
}
