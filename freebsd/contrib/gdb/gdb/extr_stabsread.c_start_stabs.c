
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 int * common_block_name ;
 int * global_stabs ;
 int n_this_object_header_files ;
 struct type** type_vector ;
 scalar_t__ type_vector_length ;

void
start_stabs (void)
{
  global_stabs = ((void*)0);

  n_this_object_header_files = 1;
  type_vector_length = 0;
  type_vector = (struct type **) 0;


  common_block_name = ((void*)0);
}
