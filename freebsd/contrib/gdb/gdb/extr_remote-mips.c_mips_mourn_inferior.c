
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * current_ops ;
 int generic_mourn_inferior () ;
 int unpush_target (int *) ;

__attribute__((used)) static void
mips_mourn_inferior (void)
{
  if (current_ops != ((void*)0))
    unpush_target (current_ops);
  generic_mourn_inferior ();
}
