
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fbt_probe_t ;


 int DTRACE_PRIV_USER ;
 int FBT_PROBETAB_SIZE ;
 int GID_WHEEL ;
 int M_FBT ;
 int M_WAITOK ;
 int M_ZERO ;
 int UID_ROOT ;
 int dtrace_doubletrap_func ;
 int dtrace_invop_add (int ) ;
 scalar_t__ dtrace_register (char*,int *,int ,int *,int *,int *,int *) ;
 int fbt_attr ;
 int fbt_cdev ;
 int fbt_cdevsw ;
 int fbt_doubletrap ;
 int fbt_id ;
 int fbt_invop ;
 int fbt_linker_file_cb ;
 int fbt_pops ;
 int fbt_probetab ;
 int fbt_probetab_mask ;
 int fbt_probetab_size ;
 int linker_file_foreach (int ,int *) ;
 int make_dev (int *,int ,int ,int ,int,char*) ;
 int malloc (int,int ,int) ;

__attribute__((used)) static void
fbt_load(void *dummy)
{

 fbt_cdev = make_dev(&fbt_cdevsw, 0, UID_ROOT, GID_WHEEL, 0600,
     "dtrace/fbt");


 if (fbt_probetab_size == 0)
  fbt_probetab_size = FBT_PROBETAB_SIZE;


 fbt_probetab_mask = fbt_probetab_size - 1;


 fbt_probetab =
     malloc(fbt_probetab_size * sizeof (fbt_probe_t *), M_FBT, M_WAITOK | M_ZERO);

 dtrace_doubletrap_func = fbt_doubletrap;
 dtrace_invop_add(fbt_invop);

 if (dtrace_register("fbt", &fbt_attr, DTRACE_PRIV_USER,
     ((void*)0), &fbt_pops, ((void*)0), &fbt_id) != 0)
  return;


 linker_file_foreach(fbt_linker_file_cb, ((void*)0));
}
