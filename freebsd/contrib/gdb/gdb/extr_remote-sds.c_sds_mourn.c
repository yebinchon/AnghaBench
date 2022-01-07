
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int generic_mourn_inferior () ;
 int sds_ops ;
 int unpush_target (int *) ;

__attribute__((used)) static void
sds_mourn (void)
{
  unpush_target (&sds_ops);
  generic_mourn_inferior ();
}
