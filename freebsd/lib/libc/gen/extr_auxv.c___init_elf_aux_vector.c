
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _DYNAMIC ;
 int _once (int *,int ) ;
 int aux_vector_once ;
 int init_aux_vector_once ;

void
__init_elf_aux_vector(void)
{

 if (&_DYNAMIC != ((void*)0))
  return;
 _once(&aux_vector_once, init_aux_vector_once);
}
