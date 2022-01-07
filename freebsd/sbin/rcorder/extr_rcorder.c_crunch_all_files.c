
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crunch_file (int ) ;
 int file_count ;
 int * file_list ;
 int insert_before () ;

__attribute__((used)) static void
crunch_all_files(void)
{
 int i;

 for (i = 0; i < file_count; i++)
  crunch_file(file_list[i]);
 insert_before();
}
