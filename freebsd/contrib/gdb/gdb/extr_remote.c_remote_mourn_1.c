
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_ops {int dummy; } ;


 int generic_mourn_inferior () ;
 int unpush_target (struct target_ops*) ;

__attribute__((used)) static void
remote_mourn_1 (struct target_ops *target)
{
  unpush_target (target);
  generic_mourn_inferior ();
}
