
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sta_info {TYPE_1__* sae; } ;
struct mesh_rsn {int dummy; } ;
struct TYPE_2__ {int pmkid; } ;


 int SAE_PMKID_LEN ;
 int os_memcpy (int *,int ,int ) ;

void mesh_rsn_get_pmkid(struct mesh_rsn *rsn, struct sta_info *sta, u8 *pmkid)
{
 os_memcpy(pmkid, sta->sae->pmkid, SAE_PMKID_LEN);
}
