
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_short ;
struct TYPE_3__ {int bfc_bsm_fcntl_cmd; } ;
typedef TYPE_1__ bsm_fcntl_cmd_t ;


 int BSM_F_UNKNOWN ;
 TYPE_1__* bsm_lookup_local_fcntl_cmd (int) ;

u_short
au_fcntl_cmd_to_bsm(int local_fcntl_cmd)
{
 const bsm_fcntl_cmd_t *bfcp;

 bfcp = bsm_lookup_local_fcntl_cmd(local_fcntl_cmd);
 if (bfcp == ((void*)0))
  return (BSM_F_UNKNOWN);
 return (bfcp->bfc_bsm_fcntl_cmd);
}
