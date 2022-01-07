
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_FBT ;
 int destroy_dev (int ) ;
 int * dtrace_doubletrap_func ;
 int dtrace_invop_remove (int ) ;
 int dtrace_unregister (int ) ;
 int fbt_cdev ;
 int fbt_id ;
 int fbt_invop ;
 int * fbt_probetab ;
 scalar_t__ fbt_probetab_mask ;
 int free (int *,int ) ;

__attribute__((used)) static int
fbt_unload()
{
 int error = 0;


 dtrace_invop_remove(fbt_invop);

 dtrace_doubletrap_func = ((void*)0);


 if ((error = dtrace_unregister(fbt_id)) != 0)
  return (error);


 free(fbt_probetab, M_FBT);
 fbt_probetab = ((void*)0);
 fbt_probetab_mask = 0;

 destroy_dev(fbt_cdev);

 return (error);
}
