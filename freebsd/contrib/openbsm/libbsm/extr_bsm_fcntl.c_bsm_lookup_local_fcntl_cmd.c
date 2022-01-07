
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int bfc_local_fcntl_cmd; } ;
typedef TYPE_1__ bsm_fcntl_cmd_t ;


 int bsm_fcntl_cmd_count ;
 TYPE_1__ const* bsm_fcntl_cmdtab ;

__attribute__((used)) static const bsm_fcntl_cmd_t *
bsm_lookup_local_fcntl_cmd(int local_fcntl_cmd)
{
 int i;

 for (i = 0; i < bsm_fcntl_cmd_count; i++) {
  if (bsm_fcntl_cmdtab[i].bfc_local_fcntl_cmd ==
      local_fcntl_cmd)
   return (&bsm_fcntl_cmdtab[i]);
 }
 return (((void*)0));
}
