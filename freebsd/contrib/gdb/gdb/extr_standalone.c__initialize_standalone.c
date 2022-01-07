
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* files_start ;
 void* heap ;
 void* memory_limit ;
 char* next_free ;

_initialize_standalone (void)
{
  char *next;



  files_start = heap;



  for (next = files_start; *(int *) next; next += *(int *) next)
    {
    }


  next_free = next;

  memory_limit = heap + sizeof heap;
}
