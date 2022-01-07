
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_write_program_data {int child_stdin; int child_stdout; int program_name; } ;


 struct archive_write_program_data* calloc (int,int) ;
 int strdup (char const*) ;

struct archive_write_program_data *
__archive_write_program_allocate(const char *program)
{
 struct archive_write_program_data *data;

 data = calloc(1, sizeof(struct archive_write_program_data));
 if (data == ((void*)0))
  return (data);
 data->child_stdin = -1;
 data->child_stdout = -1;
 data->program_name = strdup(program);
 return (data);
}
