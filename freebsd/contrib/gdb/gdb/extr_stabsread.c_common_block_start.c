
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct objfile {int objfile_obstack; } ;
struct TYPE_3__ {int nsyms; } ;


 TYPE_1__* common_block ;
 int common_block_i ;
 int * common_block_name ;
 int complaint (int *,char*) ;
 TYPE_1__* local_symbols ;
 int * obsavestring (char*,int ,int *) ;
 int strlen (char*) ;
 int symfile_complaints ;

void
common_block_start (char *name, struct objfile *objfile)
{
  if (common_block_name != ((void*)0))
    {
      complaint (&symfile_complaints,
   "Invalid symbol data: common block within common block");
    }
  common_block = local_symbols;
  common_block_i = local_symbols ? local_symbols->nsyms : 0;
  common_block_name = obsavestring (name, strlen (name),
        &objfile->objfile_obstack);
}
