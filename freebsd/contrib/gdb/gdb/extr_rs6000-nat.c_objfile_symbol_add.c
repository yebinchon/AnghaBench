
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile {int dummy; } ;


 int new_symfile_objfile (struct objfile*,int ,int ) ;
 int syms_from_objfile (struct objfile*,int *,int ,int ,int ,int ) ;

__attribute__((used)) static int
objfile_symbol_add (void *arg)
{
  struct objfile *obj = (struct objfile *) arg;

  syms_from_objfile (obj, ((void*)0), 0, 0, 0, 0);
  new_symfile_objfile (obj, 0, 0);
  return 1;
}
