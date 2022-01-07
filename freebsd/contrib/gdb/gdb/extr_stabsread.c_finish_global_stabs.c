
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile {int dummy; } ;


 int * global_stabs ;
 int global_symbols ;
 int patch_block_stabs (int ,int *,struct objfile*) ;
 int xfree (int *) ;

void
finish_global_stabs (struct objfile *objfile)
{
  if (global_stabs)
    {
      patch_block_stabs (global_symbols, global_stabs, objfile);
      xfree (global_stabs);
      global_stabs = ((void*)0);
    }
}
